using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Hospital_Management_System_1
{
    public partial class patient_registration1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");
        string PatientId = "PT";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoId();
            }
        }
        private void GenerateAutoId()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(PatientId) from Patient", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i += 100;
            p_id.Text = PatientId + i.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Patient values (@PatientId, @FirstName, @LastName, @Age, @Gender, @ContactNumber, @Password, @Question, @Answer)", con);
            cmd.Parameters.AddWithValue("@PatientId", p_id.Text);
            cmd.Parameters.AddWithValue("@FirstName", fname.Text);
            cmd.Parameters.AddWithValue("@LastName", lname.Text);
            cmd.Parameters.AddWithValue("@Age", age.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
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
        public void ClearTextBox()
        {
            fname.Text = "";
            lname.Text = "";
            age.Text = "";
            c_number.Text = "";
            p_id.Text = "";
            password.Text = "";
            security1.Text = "";
        }
    }
}