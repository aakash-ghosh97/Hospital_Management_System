<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient-book-appointment.aspx.cs" Inherits="Hospital_Management_System_1.patient_book_appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    #app_id, #DropDownList2, #Calender1, #DropDownList1 {
        width: 30%;
        padding: 15px;
        margin: 5px 0 10px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

        #app_id:focus, #DropDownList2:focus, #Calender1:focus, #DropDownList1:focus {
            background-color: #ddd;
            outline: none;
        }

    body {
        background-image: url('https://images.squarespace-cdn.com/content/v1/58d0113a3e00bef537b02b70/1550775812365-EFKCPDCN19L83PIYXNFJ/ke17ZwdGBToddI8pDm48kPOyYgnW7nyGjASOBc05s4cUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcPcoXOkyqWaOHB4GvAJSdoc4CMztxOhXE1Z99t8Z6SynyAMX4K3x1OyKjTm46P46A/XH_Web_BannerBackground_Home_Hands2.png');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        font-family: Arial, Helvetica, sans-serif;
    }
        .img {
border:1px;
      border-radius: 50%;
      height:150px;
      width:150px;
margin-top:50px;
margin-left:225px
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

        <center><h2 class="auto-style2">New Booking</h2></center>

        <center>
       <br /><asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br /><br /><br /><label for="app_id"><b style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-style: oblique">Appointment Id:-</b></label>
      <br /><asp:Label ID="app_id" runat="server"></asp:Label>
    <%--<input type="number" placeholder="Enter your Age" id="age" required>--%>

        <br /><br /><label for="m_service"><b style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-style: oblique">Choose Medicare Services</b></label>
      <br /><asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Verdana">
                        <asp:ListItem>Clinical Services</asp:ListItem> 
                        <asp:ListItem>Cancer Services</asp:ListItem>
                        <asp:ListItem>Heart/Cardiovascular Services</asp:ListItem>
                        <asp:ListItem>Pediatric Services</asp:ListItem>
                        <asp:ListItem>Weight Management Services</asp:ListItem>
                        <asp:ListItem>Men's Health Services</asp:ListItem>
                        <asp:ListItem>Women's Health Services</asp:ListItem>
                    </asp:DropDownList>

      <br /><br /><label for="doctor"><b style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-style: oblique;">Choose Doctor</b></label>
      <br /><asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Verdana">
                    </asp:DropDownList>

        <br /><br /><label for="date"><b style="font-family: Georgia, 'Times New Roman', Times, serif; font-style: oblique; font-size: large;">Choose Appointment Date</b></label>
        <br /><br /><asp:Calendar ID="Calendar1" runat="server" Width="360px" Height="193px"></asp:Calendar>

        <br /><br />
        <asp:Button ID="Button1" class="sbmtbtn" runat="server" Text="Book" OnClick="Button1_Click" />
        </center>

    </form>
</body>
</html>
