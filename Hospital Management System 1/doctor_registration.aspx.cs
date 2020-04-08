using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Hospital_Management_System_1
{
    public partial class doctor_registration : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");
        string DoctorId = "DC";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoId();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Doctor values (@DoctorId, @FirstName, @LastName, @Age, @Gender, @Speciality, @ContactNumber, @Password, @Question, @Answer)", con);
            cmd.Parameters.AddWithValue("@DoctorId", d_id.Text);
            cmd.Parameters.AddWithValue("@FirstName", fname.Text);
            cmd.Parameters.AddWithValue("@LastName", lname.Text);
            cmd.Parameters.AddWithValue("@Age", age.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Speciality", speciality.Text);
            cmd.Parameters.AddWithValue("@ContactNumber", c_number.Text);
            cmd.Parameters.AddWithValue("@Password", password.Text);
            cmd.Parameters.AddWithValue("@Question", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Answer", security1.Text);
            cmd.ExecuteNonQuery();
            ClearTextBox();
            Label1.Text = "Successfully Submitted";
            con.Close();
            GenerateAutoId();
        }
        private void GenerateAutoId()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(DoctorId) from Doctor", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i += 100;
            d_id.Text = DoctorId + i.ToString();
        }
        public void ClearTextBox()
        {
            fname.Text = "";
            lname.Text = "";
            age.Text = "";
            c_number.Text = "";
            d_id.Text = "";
            password.Text = "";
            security1.Text = "";
        }
    }
}