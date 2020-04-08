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
    public partial class admin_patient_record : System.Web.UI.Page
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
            hfPRId.Value = "";
            txtAdmissionDate.Text = txtDischargeDate.Text = txtTestId.Text = txtPatientId.Text = txtDoctorId.Text = txtMedicalService.Text = txtBillId.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("PR1", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@PR_Id", (hfPRId.Value == "" ? 0 : Convert.ToInt32(hfPRId.Value)));
            sqlCmd.Parameters.AddWithValue("@BillId", txtBillId.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@DoctorId", txtDoctorId.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@MedicalService", txtMedicalService.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@PatientId", txtPatientId.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@AdmissionDate", txtAdmissionDate.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@DischargeDate", txtDischargeDate.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@TestId", txtTestId.Text.Trim());

            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string testId = hfPRId.Value;
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
            SqlDataAdapter sqlDa = new SqlDataAdapter("PR2", sqlCon);
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
            SqlDataAdapter sqlDa = new SqlDataAdapter("PR3", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@PR_Id", testId);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfPRId.Value = testId.ToString();
            txtAdmissionDate.Text = dtbl.Rows[0]["AdmissionDate"].ToString();
            txtDischargeDate.Text = dtbl.Rows[0]["DischargeDate"].ToString();
            txtBillId.Text = dtbl.Rows[0]["BillId"].ToString();
            txtTestId.Text = dtbl.Rows[0]["TestId"].ToString();
            txtPatientId.Text = dtbl.Rows[0]["PatientId"].ToString();
            txtMedicalService.Text = dtbl.Rows[0]["MedicalService"].ToString();
            txtDoctorId.Text = dtbl.Rows[0]["DoctorId"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
            { sqlCon.Open(); }
            SqlCommand sqlCmd = new SqlCommand("PR4", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@PR_Id", Convert.ToInt32(hfPRId.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }
    }
}