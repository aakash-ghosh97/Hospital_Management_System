﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Hospital_Management_System_1
{
    public partial class patient_test_result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from TestResult", con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            GridView1.DataSource = dtbl;
            GridView1.DataBind();
        }
    }
}