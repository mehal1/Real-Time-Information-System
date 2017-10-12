<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studpage.aspx.cs" Inherits="studpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link rel="stylesheet" href="style1.css" />
   
    <title></title>
       <style type="text/css">
           .auto-style1 {
               color: #FF0000;
               font-weight: bold;
           }
           button {
         
           
   position:absolute; 
   margin-left:-100px;
   left:50%;
   
   width:200px;
   bottom:5px;
}
       </style>
</head>
<body>
    <p>
    <img src="Logo.png" /></p>
    <div class="form-style-5">
<form runat="server">
   &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:HyperLink ID="HyperLink1" runat="server" style="font-weight: 700; color: #6600FF" NavigateUrl="">Change password</asp:HyperLink>
    <fieldset>
<legend>
    <br />
    Please fill the academic form :</legend>

<fieldset>
<legend><span class="number">1</span> B.E. :</legend>
    <br />
Enter your Roll No.:<asp:TextBox ID="rollno" runat="server" placeholder="Please enter your roll No.: *" required="required" MaxLength="52" />
    
Enter your CGPA of Semester 1&nbsp;&nbsp;<asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox1" 
ErrorMessage="Please enter CGPA out of 10" style="color: #FF0000; font-weight: 700" /><asp:TextBox ID="TextBox1" runat="server" placeholder="Your sem 1 CGPA *" required="required" />
    
Enter your CGPA of Semester 2&nbsp;&nbsp;<asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox2" 
ErrorMessage="Please enter CGPA out of 10" style="color: #FF0000; font-weight: 700" /><asp:TextBox ID="TextBox2" runat="server" placeholder="Your sem 2 CGPA *" required="required" />
    
Enter your CGPA of Semester 3&nbsp;&nbsp; <asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox3" 
ErrorMessage="Please enter CGPA out of 10" CssClass="auto-style1" /><asp:TextBox ID="TextBox3" runat="server" placeholder="Your sem 3 CGPA *" required="required" />
   
Enter your CGPA of Semester 4&nbsp;&nbsp; <asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox4" 
ErrorMessage="Please enter CGPA out of 10" CssClass="auto-style1" /><asp:TextBox ID="TextBox4" runat="server" placeholder="Your sem 4 CGPA *" required="required" />
   
Enter your CGPA of Semester 5&nbsp;&nbsp; <asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox5" 
ErrorMessage="Please enter CGPA out of 10" CssClass="auto-style1" /><asp:TextBox ID="TextBox5" runat="server" placeholder="Your sem 5 CGPA *" required="required" />
  
Enter your CGPA of Semester 6&nbsp;&nbsp;<asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox6" 
ErrorMessage="Please enter CGPA out of 10" CssClass="auto-style1" /><asp:TextBox ID="TextBox6" runat="server" placeholder="Your sem 6 CGPA *" required="required" />
   
Enter your CGPA of Semester 7&nbsp;&nbsp; <asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox7" 
ErrorMessage="Please enter CGPA out of 10" CssClass="auto-style1" /><asp:TextBox ID="TextBox7" runat="server" placeholder="Your sem 7 CGPA *" required="required" />
   
Enter your CGPA of Semester 8&nbsp;&nbsp;<asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="TextBox8" 
ErrorMessage="Please enter CGPA out of 10" CssClass="auto-style1" /><asp:TextBox ID="TextBox8" runat="server" placeholder="Your sem 8 CGPA *" required="required" />
   
 Enter your Total CGPA&nbsp;&nbsp;  <asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="10" ControlToValidate="BE" 
ErrorMessage="Please enter CGPA out of 10" CssClass="auto-style1" /><asp:TextBox ID="BE" runat="server" placeholder="Your CGPA *" required="required"/> 

 Live KTs <asp:TextBox ID="lkt" runat="server" placeholder="Please write zero if you don't have any " required="required" />
 Dead KTs <asp:TextBox ID="dkt" runat="server" placeholder="Please write zero if you don't have any " required="required" />  
    
</fieldset>
        <fieldset>
<legend><span class="number">2</span> HSC/Diploma :</legend>
            
Enter your Percentage in HSC/Diploma &nbsp;&nbsp; <asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="100" ControlToValidate="hsc" 
ErrorMessage="Please enter your percentage(out of 100)" CssClass="auto-style1" /><asp:TextBox ID="hsc" runat="server"  placeholder="Your HSC percentage *"></asp:TextBox>
Enter number of years of gap after 12th<asp:TextBox ID="gap" runat="server" placeholder="Please write zero if you don't have any" />
</fieldset>
        <fieldset>
<legend><span class="number">3</span> SSC :</legend>
Enter your Percentage in SSC &nbsp;&nbsp;<asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="100" ControlToValidate="ssc" 
ErrorMessage="Please enter your percentage(out of 100)" CssClass="auto-style1" /> 
 <asp:TextBox ID="ssc" runat="server" placeholder="Your SSC percentage *" />
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>     
</fieldset>
        </fieldset>
                    
    </form> 
</div></body>

</html>
