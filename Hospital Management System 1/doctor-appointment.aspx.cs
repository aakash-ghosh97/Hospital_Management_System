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
    public partial class doctor_appointment : System.Web.UI.Page
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
            hfAppointmentId.Value = "";
            txtDate.Text = txtDoctor.Text = txtMedicare_Services.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("ContactCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@AppointmentId", (hfAppointmentId.Value == "" ? 0 : Convert.ToInt32(hfAppointmentId.Value)));
            sqlCmd.Parameters.AddWithValue("@Date", txtDate.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Doctor", txtDoctor.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Medicare_Services", txtMedicare_Services.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string appointmentId = hfAppointmentId.Value;
            Clear();
            if (appointmentId == "")
            {
                lblSuccessMessage.Text = "Saved Successfully";
            }
            else
            {
                lblSuccessMessage.Text = "Your Request is Approved";
                FillGridView();
            }
        }
        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("AppointmentViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            gvAppointment.DataSource = dtbl;
            gvAppointment.DataBind();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int appointmentId = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
            { sqlCon.Open(); }
            SqlDataAdapter sqlDa = new SqlDataAdapter("AppointmentViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@AppointmentId", appointmentId);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfAppointmentId.Value = appointmentId.ToString();
            txtDate.Text = dtbl.Rows[0]["Date"].ToString();
            txtDoctor.Text = dtbl.Rows[0]["Doctor"].ToString();
            txtMedicare_Services.Text = dtbl.Rows[0]["Medicare_Services"].ToString();
            btnSave.Text = "Approve";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
            { sqlCon.Open(); }
            SqlCommand sqlCmd = new SqlCommand("AppointmentDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@AppointmentId", Convert.ToInt32(hfAppointmentId.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Your Request is Rejected";
        }
    }
}