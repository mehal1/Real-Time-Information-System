<%@ Page Language="C#" AutoEventWireup="true" CodeFile="otppage.aspx.cs" Inherits="otppage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>


body {
    background-image: url("blue1.png");
    -moz-background-size : cover;
    
}

.elegant-aero {
    margin-left:auto;
    margin-right:auto;

    max-width: 500px;
    background: #D2E9FF;
    padding: 20px 20px 20px 20px;
    font: 12px Arial, Helvetica, sans-serif;
    color: #666;
}
.elegant-aero h1 {
    font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
    padding: 10px 10px 10px 20px;
    display: block;
    background: #C0E1FF;
    border-bottom: 1px solid #B8DDFF;
    margin: -20px -20px 15px;
}
.elegant-aero h1>span {
    display: block;
    font-size: 11px;
}

.elegant-aero label>span {
    float: left;
    margin-top: 10px;
    color: #5E5E5E;
}
.elegant-aero label {
    display: block;
    margin: 0px 0px 5px;
}
.elegant-aero label>span {
    float: left;
    width: 20%;
    text-align: right;
    padding-right: 15px;
    margin-top: 10px;
    font-weight: bold;
}
.elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
    color: #888;
    width: 70%;
    padding: 0px 0px 0px 5px;
    border: 1px solid #C5E2FF;
    background: #FBFBFB;
    outline: 0;
    -webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
    box-shadow: inset 0px 1px 6px #ECF3F5;
    font: 200 12px/25px Arial, Helvetica, sans-serif;
    height: 30px;
    line-height:15px;
    margin: 2px 6px 16px 0px;
}
.elegant-aero textarea{
    height:100px;
    padding: 5px 0px 0px 5px;
    width: 70%;
}
.elegant-aero select {
    background: #fbfbfb url('down-arrow.png') no-repeat right;
    background: #fbfbfb url('down-arrow.png') no-repeat right;
   -moz-appearance :none;
    -webkit-appearance:none; 
   -moz-appearance: none;
    text-indent: 0.01px;
    text-overflow: '';
    width: 70%;
}
.Button1{
        border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 10px 30px;
            background: #66C1E4;
            color: #FFF;
            box-shadow: 1px 1px 1px #4C6E91;
            -webkit-box-shadow: 1px 1px 1px #4C6E91;
            -moz-box-shadow: 1px 1px 1px #4C6E91;
            text-shadow: 1px 1px 1px #5079A3;
            height: 42px;
        }
.Button1:hover{
    background: #3EB1DD;
}        </style>
    <title></title>
</head>
<body>
    <p>
    <img src="Logo.png" /></p>
    <form id="form1" runat="server" class="elegant-aero">
    <h1>GET OTP 
        <span>Please enter your phone number with country code</span>
    </h1>
    <label>
        <span>Your Phone No. :</span>
        <asp:TextBox ID="telephoneno"   runat="server"  required= "required" placeholder="Please write country code before your number. e.g for India country code is 91 " AutoPostBack="True" CausesValidation="True" Width="295px" MaxLength="12"   />
        <br />
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid Phone number(Make sure you have written country code)" ControlToValidate="telephoneno" ValidationExpression="^91\d{10}$" style="color: #FF0000; font-size: small; font-weight: 700" ></asp:RegularExpressionValidator>
         </label>
    
   
    <br />
     
        <span>&nbsp;</span> 
         <asp:Button ID="Button1" CssClass="Button1" runat="server" Text="Send otp" OnClick="Button1_Click" />
        &nbsp;<br />
        Click <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudRegister.aspx">here </asp:HyperLink> to Register.
     

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</form>
</body>
</html>
