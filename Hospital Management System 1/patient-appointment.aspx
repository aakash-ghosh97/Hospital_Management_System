<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient-appointment.aspx.cs" Inherits="Hospital_Management_System_1.patient2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
        .w3-display-container{position:relative}
.w3-hover-opacity:hover{opacity:0.65}
.w3-display-middle{position:absolute;top:1%;left:40%;transform:translate(-50%,-25%);-ms-transform:translate(-25%,-25%)}
.w3-display-container:hover .w3-display-hover{display:block}.w3-display-container:hover span.w3-display-hover{display:inline-block}.w3-display-hover{display:none}
.w3-xlarge{font-size:16px!important}
.w3-button{border:none;display:inline-block;padding:2px 2px;vertical-align:middle;overflow:hidden;text-decoration:none;color:black;background-color:deepskyblue;text-align:center;cursor:pointer;white-space:nowrap;
margin-top:-66px;}
.w3-black{background-color: black;color: ghostwhite;}

        body{
        background-image: url('https://images.squarespace-cdn.com/content/v1/58d0113a3e00bef537b02b70/1550775812365-EFKCPDCN19L83PIYXNFJ/ke17ZwdGBToddI8pDm48kPOyYgnW7nyGjASOBc05s4cUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcPcoXOkyqWaOHB4GvAJSdoc4CMztxOhXE1Z99t8Z6SynyAMX4K3x1OyKjTm46P46A/XH_Web_BannerBackground_Home_Hands2.png');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
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
         background-color:deepskyblue;
        width:1347px;
        height: 60px;
        font-size:50px;
        text-align:center;
        margin-top: 65px;
    }
       
       
        .Button {
            width: 128px;
            margin-left: 0px;
        }
       
       
    .auto-style2 {
        border-style: none;
        border-color: inherit;
        border-width: 1px;
        border-radius: 50%;
        height: 150px;
        width: 150px;
        margin-top: 50px;
        margin-left: 243px
    }
    .auto-style3 {
        border-style: none;
        border-color: inherit;
        border-width: 1px;
        border-radius: 50%;
        height: 150px;
        width: 150px;
        margin-top: 50px;
        margin-left: 13px
    }
    .auto-style4 {
         background-color:lightskyblue;
        width:700px;
        height: 45px;
        font-size:35px;
        text-align:center;
        margin-top: 65px;
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
       
        <h1 class="auto-style1" >Hospital Management System</h1>

        <center><h2 class="auto-style4">Appointment</h2></center>

<br /><center>
<span class="w3-display-container w3-hover-opacity" >
    <img class="auto-style3" src="https://www.ibxmedicare.com/images/icon-page.svg" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'patient-book-appointment.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:20px">Book Appoinment</button>
    </span>
</span>

        <span class="w3-display-container w3-hover-opacity" >
    <img class="auto-style2" src="https://www.ibxmedicare.com/images/icon-page.svg" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'patient-view-appointment.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:160px">View Appoinment</button>
    </span>
</span>

</center>


    </form>
</body>
</html>
