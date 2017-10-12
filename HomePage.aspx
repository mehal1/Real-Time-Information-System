<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta charset='utf-8' />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1" />
   <link rel="stylesheet" href="style.css" />
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   

    <title></title>
</head>
<body>
    <img src="Logo.png" />
    <form id="form1" runat="server">
    <div id='cssmenu'>
<ul>
   <li class='active'><a href='#'><span>Home</span></a></li>
    <li><a href="Aboutus.aspx"><span>About us</span></a></li>
   
   <li><a href="TPOLogin.aspx"><span>TPO Login</span></a></li>
   <li><a href="otppage.aspx"><span>Student Registration</span></a></li>
   <li class='last'><a href="StudLogin.aspx"><span>Student Login</span></a>
          </li>
</ul>
</div>
        <div>
            <img src="homeimg1.png" style="height: 378px; width: 999px" />
            </div>
</form>
    </body>
</html>
