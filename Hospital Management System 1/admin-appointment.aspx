<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-appointment.aspx.cs" Inherits="Hospital_Management_System_1.admin_appointment" %>

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
        background-color: lightskyblue;
        width: 1350px;
        height: 40px;
        font-size: 30px;
        text-align: center;
        margin-top: 20px;
    }
    .signout{
            text-align:left;
            margin-left:1250px;
            color:forestgreen;
        }
    </style>
<body>
    <a href="home-page.aspx" class="signout">(Sign Out)</a>
    <center>
    <form id="form1" runat="server">
        <h1 class="auto-style1">Hospital Management System</h1><br><br>
        <h2 class="auto-style2">Appointment Request</h2><br><br>
        <div>
            <asp:HiddenField ID="hfAppointmentId" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Doctor"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDoctor" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Medicare_Services"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtMedicare_Services" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                       
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Approve" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Reject" OnClick="btnDelete_Click" />
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
            <asp:GridView ID="gvAppointment" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" />
                    <asp:BoundField DataField="Doctor" HeaderText="Doctor" />
                    <asp:BoundField DataField="Medicare_Services" HeaderText="Medicare_Services" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="linkView" runat="server" CommandArgument='<%# Eval("AppointmentId") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
        </center>
</body>
</html>
