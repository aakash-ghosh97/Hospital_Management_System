<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient1.aspx.cs" Inherits="Hospital_Management_System_1.patient1" %>

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
    <marquee behavior="scroll" scrollamount="10"  direction="right"><h1 font-size="8">Welcome Patient</h1></marquee><br>

       


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQPksawNSfn0iKZIAMAMu0QH3EBHOslg50O62JthHDu1UjCw6dl&usqp=CAU" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'patient-medicare.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Medicare</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://www.ibxmedicare.com/images/icon-page.svg" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'patient-appointment.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left: 150px">Appoinment</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://www.freeiconspng.com/uploads/health-insurance-plan-icon-24.png" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'know-your-doctor.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Know your Doctor</button>
    </span>
</span>

</br>




<span class="w3-display-container w3-hover-opacity" >
    <img class="img" src="https://www.practicepanther.com/wp-content/uploads/2014/10/Adobe-Echosign-Legal-Contracts.png" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'patient-test-result.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Test Result</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img"  style="border-radius=100%"src="data:image/png;base64,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" alt="Avatar" >
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'patient-feedback.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Treatment History</button>
    </span>
</span>


<span class="w3-display-container w3-hover-opacity" >
    <img class="img"  src="https://www.freeiconspng.com/uploads/like-flat-icon-png-25.png" alt="Avatar">
    <span class="w3-display-middle w3-display-hover w3-xlarge">
      <button type="button" onclick="location.href = 'patient-feedback.aspx';" class="w3-display-middle w3-display-hover w3-xlarge w3-button w3-black" style="margin-left:150px">Feedback</button>
    </span>
</span>

    </form>
</body>
</html>
