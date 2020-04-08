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
    public partial class doctor_medicare : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=LAPTOP-UG2UIACO;Initial Catalog=Hospital_Management_System;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            hfMId.Value = "";
            txtMedicare_Services.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("M1", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@MId", (hfMId.Value == "" ? 0 : Convert.ToInt32(hfMId.Value)));

            sqlCmd.Parameters.AddWithValue("@Medicare_Services", txtMedicare_Services.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string testId = hfMId.Value;
            Clear();
            if (testId == "")
            {
                lblSuccessMessage.Text = "Saved Successfully";
            }
            else
            {
                lblSuccessMessage.Text = "Update successfully";
                FillGridView();
            }
        }
        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("M2", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            gvTestResult.DataSource = dtbl;
            gvTestResult.DataBind();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int testId = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
            { sqlCon.Open(); }
            SqlDataAdapter sqlDa = new SqlDataAdapter("M3", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@MId", testId);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfMId.Value = testId.ToString();
            txtMedicare_Services.Text = dtbl.Rows[0]["Medicare_Services"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
            { sqlCon.Open(); }
            SqlCommand sqlCmd = new SqlCommand("M5", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@MId", Convert.ToInt32(hfMId.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }
    }
}