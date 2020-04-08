<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin1.aspx.cs" Inherits="Hospital_Management_System_1.admin1" %>

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
        background-image: url('https://image.freepik.com/free-photo/blurred-interior-hospital-clinical-with-people-abstract-medical-background_1484-1882.jpg');
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
        .img1 {
border:1px;
      border-radius: 50%;
      height:150px;
      width:150px;
margin-top:50px;
margin-left:410px
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
    <marquee behavior="scroll" scrollamount="10"  direction="left"><h1 font-size="8">Welcome Admin</h1></marquee><br>

       


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://cdn2.iconfinder.com/data/icons/calendar-36/64/5-512.png" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'admin-appointment.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Appoinment Request</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://www.practicepanther.com/wp-content/uploads/2014/10/Adobe-Echosign-Legal-Contracts.png" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'test-result.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left: 150px">Test Result</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://www.smiletrain.org/sites/default/files/90x90%20-%20STX.jpg" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'admin-patient-record.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Patient Record</button>
    </span>
</span>

</br>




<span class="w3-display-container w3-hover-opacity" >
    <img class="img1" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRP4jqtXD45PyUly5MmsutxtYyqZIfCKxZXoyETWPSWLB9oppgZ&usqp=CAU" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'bill-generate.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:260px">Billing</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img"  style="border-radius=100%"src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSC774ai_W7UMbpJvQg_Phv2uZbyyWcffO9Sb7Qk9k0J9p3-O7Z&usqp=CAU" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'review-questionare.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Review Questionarie</button>
    </span>
</span>



    </form>
</body>
</html>
