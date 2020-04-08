using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Hospital_Management_System_1
{
    public partial class patient_forgot_password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter();
        string str;
        SqlCommand cmd;
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            str = "select * from Patient where PatientId='" + TextBox1.Text + "'";
            cmd = new SqlCommand(str, con);
            SqlDataReader reader = cmd.ExecuteReader();

            bool recordfound = reader.Read();
            if (recordfound)
            {
                Label2.Text = reader["Question"].ToString();
            }
            else
            {
                Label1.Text = "Incorrect Patient Id";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Patient where Answer='" + TextBox2.Text + "'", con);
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Patient");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("patient-new-password.aspx");
            }
            else
            {
                Label1.Text = "Incorrect Answer";
            }
        }
    }
}