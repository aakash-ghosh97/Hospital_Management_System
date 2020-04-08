using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Hospital_Management_System_1
{
    public partial class admin_new_password : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Admin set Password=@NewPassword where Password='" + TextBox3.Text + "'", con);
            cmd.Parameters.AddWithValue("@NewPassword", TextBox1.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Successfully Changed";
            con.Close();
        }
    }
}