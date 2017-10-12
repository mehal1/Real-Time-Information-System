<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TPOLogin.aspx.cs" Inherits="TPOLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
     body {
    background-image: url("blue1.png");
    -moz-background-size : cover;
    
}
        #form div{
            margin-top: 10px;
        }
        #form input, textarea, button {
            width: 100%;
            border: 2px solid #9ECEDB;
            padding: 3px 5px;
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
#form
{
    background-color:white;
}
#form button
{
    background-color: #9ECEDB;
    color: #184552;
    cursor:pointer;
        margin-left: 0px;
    }

#form button:hover
{
    background-color:blue;
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
            color: #CCFFFF;
        }
        .auto-style2 {
            background-color: #CCFFFF;
        }
       
        .auto-style3 {
            color: #000099;
        }
        .auto-style4 {
            background-color: #FFFFFF;
        }
       
    </style>

</head>
<body>
   
  <p>
    <img src="Logo.png" /></p>
&nbsp;<form id="form" runat="server">
   <fieldset>
<legend class="auto-style3"><strong>TPO Login</strong></legend> 

<div>
    <span class="auto-style1">
    <label for='name'><span class="auto-style2">Email</span></label></span><label for='name'><span class='auto-style1'>&nbsp;&nbsp;</span><span class='required'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></label>
    
    &nbsp;<input type='text' name='name' placeholder='your name here' required= "required" autofocus="autofocus"/> .<br />

</div>

 <div>
    <label for='Password'><span class="auto-style2">Password<br />
     </span> &nbsp;<span class='required'></span></label><asp:TextBox ID="TextBox1" runat="server" TextMode="Password"  CausesValidation="True" Width="484px" required="required"></asp:TextBox><br />
     <br />
     </div>
       <div>
    <div>
    
        <asp:Button ID="Button1" class="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
</div>

       </div>

      </fieldset>


    </form>


</body>
</html>
