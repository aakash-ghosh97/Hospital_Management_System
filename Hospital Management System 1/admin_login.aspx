<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Hospital_Management_System_1.admin_login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

    #psw, #uname {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    #psw:focus, #uname:focus {
        background-color: #ddd;
        outline: none;
    }

    .loginbtn, .rgstrbtn {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    button:hover {
        opacity: 0.8;
    }

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;

}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  /*background-color:lightblue;*/
}

span.psw {
  float: right;
  padding-top: 16px;
}

    /* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<body>
    <form id="form1" runat="server">
  <div class="imgcontainer">
    <img src="https://pramana.gitam.edu/next/portal/login/assets/img/avatar_2x.png" alt="Avatar" class="avatar" style="width: 14%; height: 183px">
  </div>
    <center><h1>Welcome Admin,</h1>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
        </p></center>
  <div class="container">
    <label for="uname"><b>Vendor Id</b></label>
    <asp:TextBox ID="uname" placeholder="Enter your Vendor Id" runat="server" required></asp:TextBox>


    <label for="psw"><b>Password</b></label>
    <asp:TextBox ID="psw" TextMode="Password" placeholder="Enter your Password" runat="server" required></asp:TextBox>

        
    <asp:Button ID="login" runat="server" class="loginbtn" OnClick="login_Click" Text="Login" />
      
    
    </form>
    <button type="button" onclick="window.location.href  = 'admin_registration.aspx';" class="rgstrbtn">Register</button>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" onclick="window.location.href  = 'home-page.aspx';" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="admin-forgot-password.aspx">password?</a></span>
  </div>


</body>
</html>
