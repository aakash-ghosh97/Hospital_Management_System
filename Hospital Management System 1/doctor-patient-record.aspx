<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor-patient-record.aspx.cs" Inherits="Hospital_Management_System_1.doctor_patient_record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
        body {
        background-image: url('https://image.freepik.com/free-photo/blurred-interior-hospital-clinical-with-people-abstract-medical-background_1484-1882.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }
         .auto-style1 {
        background-color: deepskyblue;
        width: 1350px;
        height: 60px;
        font-size: 50px;
        text-align: center;
        margin-top: 20px;
    }

    .auto-style2 {
        background-color:lightskyblue;
        width:700px;
        height: 45px;
        font-size:35px;
        text-align:center;
        margin-top: 65px;
    }
    .auto-style3 {
        width: 457px;
        height: 177px;
        margin-top: 0px;
    }

    .signout {
        text-align: left;
        margin-left: 1250px;
        color: forestgreen;
    }
    </style>
<body>
    <a href="home-page.aspx" class="signout">(Sign Out)</a>
    <center>
    <form id="form1" runat="server">
        <h1 class="auto-style1">Hospital Management System</h1><br>
        <h2 class="auto-style2">Patient Record</h2><br><br>
        <div>
            <asp:HiddenField ID="hfPRId" runat="server" />
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="PatientId"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPatientId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="DoctorId"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDoctorId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="MedicalService"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtMedicalService" runat="server"></asp:TextBox>
                    </td>
                     <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="TestId"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtTestId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                     <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="BillId"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtBillId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                     <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="AdmissionDate"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAdmissionDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                     <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="DischargeDate"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDischargeDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                </tr>
                 <tr>
                    <td>
                       
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
                  <tr>
                    <td>
                       
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
                  <tr>
                    <td>
                       
                    </td>
                    <td colspan="2">
                         <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="gvTestResult" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="PatientId" HeaderText="PatientId" />  
                    <asp:BoundField DataField="DoctorId" HeaderText="DoctorId" />
                    <asp:BoundField DataField="MedicalService" HeaderText="MedicalService" />
                    <asp:BoundField DataField="TestId" HeaderText="TestId" />
                    <asp:BoundField DataField="BillId" HeaderText="BillId" />
                    <asp:BoundField DataField="AdmissionDate" HeaderText="AdmissionDate" />
                    <asp:BoundField DataField="DischargeDate" HeaderText="DischargeDate" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="linkView" runat="server" CommandArgument='<%# Eval("PR_Id") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
        </center>
</body>
</html>
