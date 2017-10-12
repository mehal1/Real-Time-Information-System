<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudLogin.aspx.cs" Inherits="StudLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>    
<style>
     body {
    background-image: url("blue1.png");
    -moz-background-size : cover;
    
}
#form div
{
    margin-top:10px;
}

#form input, textarea, button
{
    width:100%;
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
    width:94%;
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
#form
{
    background-color:white;
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

</style>
</head>
    
<body>
    <p>
    <img src="Logo.png" /></p>
&nbsp;<form id="form" runat="server">
   <fieldset>
<legend><b>Student Login</b></legend> 

<div>
    <label for='name'>Telephone no.:<span class='required'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></label>
    
    &nbsp;<br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<br />

</div>

 <div>
    <label for='Password'>Password <span class='required'>
     <br />
     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  CausesValidation="True" Width="484px" required="required"></asp:TextBox></span></label>
    
     <br />
     <br />
     </div>
       <div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    
</div>

       </div>

      </fieldset>


    </form>
</body>
</html>
