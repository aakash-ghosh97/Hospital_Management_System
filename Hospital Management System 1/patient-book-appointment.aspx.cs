using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Hospital_Management_System_1
{
    public partial class patient_book_appointment : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GenerateAutoId();
            }
            DataClasses1DataContext dc = new DataClasses1DataContext();
            DropDownList1.DataSource = dc.Doctors.ToList();
            DropDownList1.DataTextField = "FirstName";
            DropDownList1.DataValueField = "FirstName";
            DropDownList1.DataBind();

        }
        private void GenerateAutoId()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(AppointmentId) from Appointment1", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            app_id.Text = i.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Appointment1 values (@AppointmentId, @Date, @Doctor, @Medicare_Services)", con);
            cmd.Parameters.AddWithValue("@AppointmentId", app_id.Text);
            cmd.Parameters.AddWithValue("@Doctor", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Medicare_Services", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Date", Calendar1.SelectedDate);
            cmd.ExecuteNonQuery();
            ClearTextBox();
            Label1.Text = "Successfully Submitted";
            con.Close();
            GenerateAutoId();
        }
        public void ClearTextBox()
        {
            app_id.Text = "";
            
        }
    }
}