using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Hospital_Management_System_1
{
    public partial class patient_login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Patient where PatientId='" + uname.Text + "' and Password='" + psw.Text + "'", con);
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Patient");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("patient1.aspx");
            }
            else
            {
                Label2.Text = "Incorrect Patient Id or Password";
            }
        }
    }
}