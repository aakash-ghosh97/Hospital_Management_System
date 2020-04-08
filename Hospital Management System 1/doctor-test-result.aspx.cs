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
    public partial class doctor_test_result : System.Web.UI.Page
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
            hfTestId.Value = "";
            txtPatientId.Text = txtDoctorId.Text = txtDate.Text = txtMedicalService.Text = txtTestResult.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("TestResultCCU", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@TestId", (hfTestId.Value == "" ? 0 : Convert.ToInt32(hfTestId.Value)));
            sqlCmd.Parameters.AddWithValue("@PatientId", txtPatientId.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@DoctorId", txtDoctorId.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Date", txtDate.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@MedicalService", txtMedicalService.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@TestResult", txtTestResult.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string testId = hfTestId.Value;
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
        protected void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("TestResultViewAll", sqlCon);
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
            SqlDataAdapter sqlDa = new SqlDataAdapter("TestResultViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@TestId", testId);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfTestId.Value = testId.ToString();
            txtPatientId.Text = dtbl.Rows[0]["PatientId"].ToString();
            txtDoctorId.Text = dtbl.Rows[0]["DoctorId"].ToString();
            txtDate.Text = dtbl.Rows[0]["Date"].ToString();
            txtMedicalService.Text = dtbl.Rows[0]["MedicalService"].ToString();
            txtTestResult.Text = dtbl.Rows[0]["TestResult"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
            { sqlCon.Open(); }
            SqlCommand sqlCmd = new SqlCommand("TestResultDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@TestId", Convert.ToInt32(hfTestId.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }
    }
}