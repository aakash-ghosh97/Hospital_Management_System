<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor1.aspx.cs" Inherits="Hospital_Management_System_1.doctor1" %>

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
        background-image: url('https://emerging-europe.com/wp-content/uploads/2018/01/bigstock-Male-Doctor-In-The-Hospital-190586731.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        }
        .img {
border:1px;
      border-radius: 50%;
      height:150px;
      width:150px;
margin-top:100px;
margin-left:150px
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
       
       
    </style>
<body>
    <form id="form1" runat="server">
       
        <h1 class="auto-style1" >Hospital Management System</h1>
    <marquee behavior="scroll" scrollamount="10"  direction="left"><h1 font-size="8" style="color:darkslategray">Welcome Doctor</h1></marquee><br>

       


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRJK49SdH0GqCAAzJqgbx3H1B71or44XEOZZeKxWe-XmC1ofOYG&usqp=CAU" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'doctor-medicare.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:107px">Medicare</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX14940223.jpg" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'doctor-appointment.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:103px">Appoitment Request</button>
    </span>
</span>



<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://strongqa.com/uploads/article_picture/image/18/test-report.jpg" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'doctor-test-result.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:107px">Test Result</button>
    </span>
</span>


       

<span class="w3-display-container w3-hover-opacity" >
    <img class="img"  style="border-radius=100%"src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSC774ai_W7UMbpJvQg_Phv2uZbyyWcffO9Sb7Qk9k0J9p3-O7Z&usqp=CAU" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'doctor-patient-record.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:107px">Patient Record</button>
    </span>
</span>




    </form>
</body>
</html>
