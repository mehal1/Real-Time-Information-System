<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TPOpage.aspx.cs" Inherits="TPOpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
    .bodybg
    {
    background: url("blue1.png") no-repeat;
    background-size: cover;
    height:396px;
    width:417px;
    } 
.smart-green {
    margin-left:auto;
    margin-right:auto;

    max-width: 500px;
    background: #F8F8F8;
    padding: 30px 30px 20px 30px;
    font: 12px Arial, Helvetica, sans-serif;
    color: #666;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
}
.smart-green h1 {
    font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
    padding: 20px 0px 20px 40px;
    display: block;
    margin: -30px -30px 10px -30px;
    color: #FFF;
    background: #9DC45F;
    text-shadow: 1px 1px 1px #949494;
    border-radius: 5px 5px 0px 0px;
    -webkit-border-radius: 5px 5px 0px 0px;
    -moz-border-radius: 5px 5px 0px 0px;
    border-bottom:1px solid #89AF4C;

}
.smart-green h1>span {
    display: block;
    font-size: 11px;
    color: #FFF;
}

.smart-green label {
    display: block;
    margin: 0px 0px 5px;
}
.smart-green label>span {
    float: left;
    margin-top: 10px;
    color: #5E5E5E;
}
.smart-green input[type="text"], .smart-green input[type="email"], .smart-green textarea, .smart-green select {
    color: #555;
    height: 30px;
    line-height:15px;
    width: 100%;
    padding: 0px 0px 0px 10px;
    margin-top: 2px;
    border: 1px solid #E5E5E5;
    background: #FBFBFB;
    outline: 0;
    -webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
    box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
    font: normal 14px/14px Arial, Helvetica, sans-serif;
}
.smart-green textarea{
    height:100px;
    padding-top: 10px;
}
.smart-green select {
    background: url('down-arrow.png') no-repeat right, -moz-linear-gradient(top, #FBFBFB 0%, #E9E9E9 100%);
    background: url('down-arrow.png') no-repeat right, -webkit-gradient(linear, left top, left bottom, color-stop(0%,#FBFBFB), color-stop(100%,#E9E9E9));
   appearance:none;
    -webkit-appearance:none;
   -moz-appearance: none;
    text-indent: 0.01px;
    text-overflow: '';
    width:100%;
    height:30px;
}
.smart-green .button {
    background-color: #9DC45F;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-border-radius: 5px;
    border: none;
    padding: 10px 25px 10px 25px;
    color: #FFF;
    text-shadow: 1px 1px 1px #949494;
}
.smart-green .button:hover {
    background-color:#80A24A;
}
body {
    background-image: url("blue1.png");
    -moz-background-size : cover;
    
}
    </style>
</head>
<body>
    <p>
    <img src="Logo.png" /></p>
   
    <form method="post" class="smart-green" runat="server">
    <h1>Enter criteria:&nbsp;
    </h1>
    
        <span>BE CGPA  :</span>
     
        <br />
        <label>
        <span>Enter minimum percentage:</span>&nbsp;&nbsp;<asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="100" ControlToValidate="TextBox1" 
ErrorMessage="Please minimum BE percentage required(out of 100)" CssClass="auto-style1" />

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         </label>
        <label>
        <asp:Button ID="Button2" runat="server" Text="Convert percentage to cgpa" class="button" OnClick="Button2_Click"/>
            </label>
        <label>
         <span> CGPA  :</span><asp:TextBox ID="cgpa" runat="server"></asp:TextBox>
            </ label>
        <label>
        <span>HSC/Diploma Percentage:</span><asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="100" ControlToValidate="hsc" 
ErrorMessage="Please minimum HSC/Diploma percentage required(out of 100)" CssClass="auto-style1" />

        <asp:TextBox ID="hsc" runat="server" placeholder="Please enter minimum HSC percentage required" />
    </label>
   <label>
        <span>SSC Percentage:</span><asp:RangeValidator runat="server" Type="double" 
MinimumValue="0" MaximumValue="100" ControlToValidate="ssc" 
ErrorMessage="Please minimum SSC percentage required(out of 100)" CssClass="auto-style1" />

        <asp:TextBox ID="ssc" runat="server" placeholder="Please enter minimum SSC percentage required" />
    </label>
        <label>
        <span>Live KTs:</span>
        <asp:TextBox ID="lkt" runat="server" placeholder="Please enter minimum Live KTs allowed" />
    </label>
         <label>
        <span>Dead KTs:</span>
        <asp:TextBox ID="dkt" runat="server" placeholder="Please enter minimum Dead KTs allowed" />
        <span>Number of years of gap after 12th or Diploma:</span>
             
        <asp:TextBox ID="gap" runat="server" placeholder="Please enter number of years of gap allowed" />
    </label>
    <label>
        <span>Message :</span>
        <asp:TextBox ID="msg" runat="server" TextMode="MultiLine" columns="50" Rows="10"></asp:TextBox>
    </label>
      <label>
        <span>&nbsp;</span>
          <asp:Button ID="Button1" runat="server" Text="Send message" class="button" OnClick="Button1_Click" />
    </label>    
</form>
        
</body>
</html>
