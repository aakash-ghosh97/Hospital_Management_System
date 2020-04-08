<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor-forgot-password.aspx.cs" Inherits="Hospital_Management_System_1.forgot_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    #TextBox1, #Label2, #TextBox2{
        width: 30%;
        padding: 15px;
        margin: 5px 0 10px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

        #TextBox1:focus, #TextBox2:focus, #Label2:focus {
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

       
    </style>
<body>
    <form id="form1" runat="server">
       
        <h1 class="auto-style1">Hospital Management System</h1>

        <center>
        <br /><asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br /><br /><br /><label for="app_id"><b style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-style: oblique">Enter Your Doctor Id:-</b></label>
            <br /><br /><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br /><asp:Button ID="Button2" class="sbmtbtn" runat="server" Text="Search" OnClick="Button2_Click" />


      <br /><br /><label for="doctor"><b style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-style: oblique;">Security Question</b></label>
      <br /><asp:Label ID="Label2" runat="server" ></asp:Label>

        <br /><br /><label for="date"><b style="font-family: Georgia, 'Times New Roman', Times, serif; font-style: oblique; font-size: large;">Enter Your Answer</b></label>
        <br /><br /><asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>

        <br /><br />
        <asp:Button ID="Button1" class="sbmtbtn" runat="server" Text="Next" OnClick="Button1_Click" />
        </center>

    </form>
</body>
</html>
