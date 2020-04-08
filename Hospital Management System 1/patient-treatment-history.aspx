<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient-treatment-history.aspx.cs" Inherits="Hospital_Management_System_1.patient_treatment_history" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>

    body {
        background-image: url('https://images.squarespace-cdn.com/content/v1/58d0113a3e00bef537b02b70/1550775812365-EFKCPDCN19L83PIYXNFJ/ke17ZwdGBToddI8pDm48kPOyYgnW7nyGjASOBc05s4cUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcPcoXOkyqWaOHB4GvAJSdoc4CMztxOhXE1Z99t8Z6SynyAMX4K3x1OyKjTm46P46A/XH_Web_BannerBackground_Home_Hands2.png');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        font-family: Arial, Helvetica, sans-serif;
    }

    .img {
        border: 1px;
        border-radius: 50%;
        height: 150px;
        width: 150px;
        margin-top: 50px;
        margin-left: 225px
    }
    .auto-style1 {
        background-color: deepskyblue;
        width: 1347px;
        height: 60px;
        font-size: 50px;
        text-align: center;
        margin-top: 65px;
    }

        .auto-style2 {
         background-color:lightskyblue;
        width:700px;
        height: 45px;
        font-size:35px;
        text-align:center;
        margin-top: 65px;
    }
       
       
        .Button {
            width: 128px;
            margin-left: 0px;
        }

              .sbmtbtn {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
  opacity: 0.9;
}

.sbmtbtn:hover {
  opacity: 1;
}

.signout{
            text-align:left;
            margin-left:1250px;
            color:forestgreen;
        }
       
    </style>
<body>
    <a href="home-page.aspx" class="signout">(Sign Out)</a>
    <form id="form1" runat="server">
       
        <h1 class="auto-style1">Hospital Management System</h1>

        <center><h2 class="auto-style2">Treatment History</h2></center>

        <center>
                <div>
            <br /><br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="PatientId" HeaderText="Patient ID" />
                    <asp:BoundField DataField="DoctorId" HeaderText="Doctor Id" />
                    <asp:BoundField DataField="AdmissionDate" HeaderText="Admission Date" />
                    <asp:BoundField DataField="MedicalService" HeaderText="Medical Services" />
                    <asp:BoundField DataField="DischargeDate" HeaderText="Discharge Date" />
                    <asp:BoundField DataField="TestId" HeaderText="Test Id" />
                    <asp:BoundField DataField="BillId" HeaderText="Bill Id" />
                </Columns>
            </asp:GridView>
        </div>
        </center>

    </form>
</body>
</html>

