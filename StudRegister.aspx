<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudRegister.aspx.cs" Inherits="StudRegister" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
    background-image: url("blue1.png");
    -moz-background-size : cover;
    
}
#form
{
    background-color:White;
}
#form div
{
    margin-top:10px;
}

#form input, textarea, button
{
    border:2px solid #9ECEDB;
    padding:3px 5px;
}

#form label
{
    font-weight:bold;
    font-size:12px;
    color:#184552;
}
.required
{
    color:#dd6666;
}
#form button
{
    background-color: #9ECEDB;
    color: #184552;
    cursor:pointer;
}

#form button:hover
{
    background-color: blue;
}
#form div
{
    margin-top:10px;
}

#form input, textarea, button
{
    border:2px solid #9ECEDB;
    padding:3px 5px;
}

#form label
{
    font-weight:bold;
    font-size:12px;
    color:#184552;
}
#form
{
     width:500px;
      margin:auto;
    font-family: sans-serif;
    box-shadow: 5px 5px 5px #888888;
    padding:20px;
    border:4px solid #27748A;
}

#form h2
{
    color:#27748A;
    font-size:35px;
    margin:0;
}
.Button1{
    padding: 10px 30px 10px 30px;
    background: #66C1E4;
    border: none;
    color: #FFF;
    box-shadow: 1px 1px 1px #4C6E91;
    -webkit-box-shadow: 1px 1px 1px #4C6E91;
    -moz-box-shadow: 1px 1px 1px #4C6E91;
    text-shadow: 1px 1px 1px #5079A3;
    
}
.Button1:hover{
    background: #3EB1DD;
}   
.resizedTextbox {width: 100px; }
#form p
{
    font-size:15px;
    color:#222222;
}
    @media only screen and ( max-width : 600px) 
    {
        #form {
            width: 350px;
            margin: auto;
            font-family: sans-serif;
            box-shadow: 5px 5px 5px #888888;
            padding: 20px;
            border: 4px solid #27748A;
        }
    }

        .auto-style1 {
            font-size: x-large;
            color: #0066FF;
        }

    </style>

</head>
<body>
        
<p>
    <img src="Logo.png" /></p>
&nbsp;<form id="form" runat="server">
   <fieldset>
<legend class="auto-style1"><strong>Personal Information</strong></legend> 
<div>
    <label for='name'>Name<span class='required'>(required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></label>
    &nbsp;
    
    <asp:TextBox ID="name" runat="server"   placeholder='your name here' required= "required" autofocus="autofocus" Width="295px"/>

</div>

 <div>  
    <label for='RollNo'>Roll No. <span class='required'>(required) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></label>
&nbsp;<asp:TextBox ID="rollno" runat="server"  placeholder="Enter your Roll No"  required="required" Width="295px" />
     <br />
</div>

<div>
    <label for='email'>Email<span class='required'>(required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span></label>
    <asp:TextBox runat="server" ID="email"  name="email"  placeholder="you@yourdomain.com"  required="required" Width="295px" />
</div>

       <div>
            &nbsp;<asp:Label ID="lblPassword" runat="server" Text="Password :" style="font-size: small; font-weight: 700">OTP <span class='required'>(required)</span></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
<asp:TextBox ID="txtPassword" runat="server"  TextMode="Password"  CausesValidation="True" Width="295px" required="required"></asp:TextBox> 
  
           
    </div>
      </fieldset>
<div>
    <label for='address'>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </label>
    <asp:TextBox runat="server" ID="address" style="height:100px"  placeholder="flat no.,building name,street,city,District" Width="412px"  />
</div>
<div>
    <label for='zip'>Zip code<br />
    </label>
    <asp:TextBox runat="server" ID="zipcode" name='zip' placeholder='your zipcode here' Width="412px" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    
</div>
    <div>
<asp:Button ID="Button1" CssClass="Button1" runat="server" OnClick="Button1_Click" Text="Register"  Width="491px"   />
   
</div>


    </form>
    </body>
</html>
