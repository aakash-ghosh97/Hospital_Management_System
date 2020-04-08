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
    public partial class admin_login1 : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from Admin where VendorId='" + uname.Text + "' and Password='" + psw.Text + "'", con);
            sda.SelectCommand = cmd;
            sda.Fill(ds,"Admin");
            if(ds.Tables[0].Rows.Count > 0 )
            {
                Response.Redirect("admin1.aspx");
            }
            else
            {
                Label2.Text = "Incorrect Vendor Id or Password";
            }
        }

    }
}