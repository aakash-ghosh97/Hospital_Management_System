<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_registration.aspx.cs" Inherits="Hospital_Management_System_1.doctor_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
        .container {
            padding: 16px;
            background-color: lightblue;
        }

        /* Full-width input fields */
        #fname, #lname, #age, #speciality, #c_number, #password, #gender, #d_id, #rtw_password, #DropDownList1, #DropDownList2, #security1{
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

            #fname:focus, #speciality:focus, #lname:focus, #age:focus, #c_number:focus, #password:focus, #d_id:focus, #gender:focus, #rtw_password:focus, #DropDownList1:focus, #DropDownList2:focus, #security1:focus {
                background-color: #ddd;
                outline: none;
            }

/* Overwrite default styles of hr */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
        .auto-style1 {
            padding: 16px;
            background-color: white;
            height: 1231px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
<body style="height: 1019px">

<form runat="server">
  <div class="auto-style1">
      <a href="doctor_login.aspx"><--- Go Back </a></span>
    <center>
        <h1 style="font-family: 'Times New Roman', Times, serif; font-size: 65px; font-style: normal; font-weight: 900; font-variant: normal; text-transform: none; color: #993399; text-decoration: blink;" class="auto-style2">Doctor Registration</h1>
    <p style="color: #CC0000">-----Please fill in this form to register yourself.------</p>
    </center>

    <label for="d_id"><b>Doctor Id</b></label>
      <asp:Label ID="d_id" runat="server" Text="Label"></asp:Label>

    <label for="fname"><b>First Name</b></label>
    <asp:TextBox ID="fname" placeholder="Enter your First Name" runat="server" required></asp:TextBox>
    <%--<input type="text" placeholder="Enter your First Name" name="fname" required>--%>

    <label for="lname"><b>Last Name</b></label>
      <asp:TextBox ID="lname" placeholder="Enter your Last Name" runat="server" required></asp:TextBox>
    <%--<input type="text" placeholder="Enter your Last Name" id="lname" required>--%>

    <label for="age"><b>Age</b></label>
      <asp:TextBox ID="age" placeholder="Enter your Age" runat="server" required></asp:TextBox>
    <%--<input type="number" placeholder="Enter your Age" id="age" required>--%>

      <label for="gender"><b>Gender</b></label>
     <%-- <asp:TextBox ID="gender" placeholder="Enter your Gender" runat="server" required></asp:TextBox>--%>
<%--    <input type="text" placeholder="Enter your Gender" id="gender" required>--%>
      <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Verdana">
                        <asp:ListItem>Male</asp:ListItem> 
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>

      <label for="speciality"><b>Speciality</b></label>
      <asp:TextBox ID="speciality" placeholder="Enter your Speciality" runat="server" required></asp:TextBox>
      
      <label for="c_number"><b>Contact Number</b></label>
      <asp:TextBox ID="c_number" placeholder="Enter your Contact Number" runat="server" required></asp:TextBox>
    <%--<input type="number" placeholder="Enter your Contact Number" id="c_number" required>--%>

      <label for="password"><b>Password</b></label><label for="rtw_password"><b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="**Password Not Matched**" ForeColor="#CC0000" ControlToCompare="password" ControlToValidate="rtw_password"></asp:CompareValidator>
      </b></label>
      &nbsp;<asp:TextBox ID="password" TextMode="Password" placeholder="Enter a Password" runat="server" required></asp:TextBox>
<%--    <input type="text" placeholder="Enter a Password" id="password" required>--%>

      <label for="rtw_password"><b>Confirm Password</b></label>

      <label for="rtw_password"><b>
      </b></label><asp:TextBox TextMode="Password" ID="rtw_password" placeholder="Retype Password" runat="server"></asp:TextBox>

      <label for="security1"><b>Security Question</b></label>
      <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Verdana">
                        <asp:ListItem>What primary school did you attend?</asp:ListItem> 
                        <asp:ListItem>Who is your favorite actor, musician, or artist?</asp:ListItem>
                        <asp:ListItem>In what city were you born?</asp:ListItem>
                        <asp:ListItem>What is the name of your first school?</asp:ListItem>
                        <asp:ListItem>What is your favorite movie?</asp:ListItem>
                        <asp:ListItem>What is your favorite color?</asp:ListItem>
                        <asp:ListItem>What is your father's middle name?</asp:ListItem>
                    </asp:DropDownList>
      <asp:TextBox ID="security1" placeholder="Enter your Answer" runat="server" required></asp:TextBox>

      <asp:Button ID="Button1" runat="server" class="registerbtn" OnClick="Button1_Click" Text="Register" />
      <center><br /><br /><asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#CC0000"></asp:Label></center>
  </div>
</form>

</body>
</html>
