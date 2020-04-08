<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    .auto-style1 {
        background-color:deepskyblue;
        margin-left: 44%;
        margin-top: 52px;
        width: 165px;
        height: 36px;
        text-align:center;
        border-radius: 5%;
        padding:5px;
    }
    .auto-style2 {
        background-color:deepskyblue;
        width:1347px;
        height: 60px;
        font-size:50px;
        text-align:center;
        margin-top: 65px;
    }
 
        img {
      border-radius: 50%;
      height:100px;
      width:100px;
      margin: 10px;
    }
    body {
        background-image: url('https://s3.ap-south-1.amazonaws.com/m3india-app-dev/ckeditor/content/shutterstock_224864116_5_-1572517448.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }

    div{
        margin: 0% 0% 0% 37%;
        width: 552px;
    }
    button {
        background-color: white;
        color: #0EBFE9;
        border-radius: 10%;
        text-align: center;
        text-decoration: none;
        width: 100px;
        font-size: 16px;
        margin: 10px 10px;
        cursor: pointer;
        padding: 10px 24px;
    }
        #form1 {
            height: 50px;
            width: 1350px;
        }
   
    .auto-style3 {
        margin-top: 0px;
    }
    .auto-style4 {
        margin-top: 42px;
    }
   
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="auto-style3">
       <h1 class="auto-style2" >Hospital Management System</h1>

        <h1><marquee behavior="scroll" direction="right" class="auto-style4">WELCOME !!!</marquee></h1>

      <h1 class="auto-style1" >Login As</h1></br></br>
        <div>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSpIdC0nU9Zqw9QiV-jvystVhj4WuLLByTeXFA46AyTsxSryddh&usqp=CAU" alt="Avatar">
        <img src="https://www.dnaworx.com/wp-content/uploads/2017/05/doctorIcon.png" alt="Avatar" >
        <img src="https://missourieye.com/wp-content/uploads/2017/01/NewPatientIcon.png" alt="Avatar" ></br>
       </div>
        <div>
         <button type="button" onclick="window.location.href = 'admin_login.aspx';">Admin</button>
         <button type="button" onclick="window.location.href  = 'patient_login.aspx';">Patient</button>
         <button type="button" onclick="window.location.href = 'doctor_login.aspx' ">Doctor</button>
        </div><br><br><br>

        

           

    </form>
</body>
</html>