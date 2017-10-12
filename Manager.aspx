<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Telephoneno" HeaderText="Telephoneno" SortExpression="Telephoneno" />
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                    <asp:BoundField DataField="cgpa1" HeaderText="cgpa1" SortExpression="cgpa1" />
                    <asp:BoundField DataField="cgpa2" HeaderText="cgpa2" SortExpression="cgpa2" />
                    <asp:BoundField DataField="cgpa3" HeaderText="cgpa3" SortExpression="cgpa3" />
                    <asp:BoundField DataField="cgpa4" HeaderText="cgpa4" SortExpression="cgpa4" />
                    <asp:BoundField DataField="cgpa5" HeaderText="cgpa5" SortExpression="cgpa5" />
                    <asp:BoundField DataField="cgpa6" HeaderText="cgpa6" SortExpression="cgpa6" />
                    <asp:BoundField DataField="cgpa7" HeaderText="cgpa7" SortExpression="cgpa7" />
                    <asp:BoundField DataField="cgpa8" HeaderText="cgpa8" SortExpression="cgpa8" />
                    <asp:BoundField DataField="BE" HeaderText="BE" SortExpression="BE" />
                    <asp:BoundField DataField="lkt" HeaderText="lkt" SortExpression="lkt" />
                    <asp:BoundField DataField="dkt" HeaderText="dkt" SortExpression="dkt" />
                    <asp:BoundField DataField="HSC" HeaderText="HSC" SortExpression="HSC" />
                    <asp:BoundField DataField="gap" HeaderText="gap" SortExpression="gap" />
                    <asp:BoundField DataField="SSC" HeaderText="SSC" SortExpression="SSC" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studpageConnectionString %>"  SelectCommand="SELECT * FROM [studpage]"></asp:SqlDataSource>
            Enter Roll No of the student Whose data is to be deleted:<br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Delete" Width="59px" OnClick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Enter Roll No of the student Whose data is to be modified:<br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            Enter which column you want to update:<br />
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            Enter new value:<br />
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click1" Text="Update" />
            <br />
    
    
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Roll No" HeaderText="Roll No" SortExpression="Roll No" />
                    <asp:BoundField DataField="[Telephone No" HeaderText="[Telephone No" SortExpression="[Telephone No" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Zip code" HeaderText="Zip code" SortExpression="Zip code" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:studpageConnectionString %>" SelectCommand="SELECT * FROM [StudRegister]" DeleteCommand="DELETE FROM StudRegister WHERE ([Roll No] = '12101A0021')"></asp:SqlDataSource>
            Enter Roll No of the student Whose data is to be deleted:<br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" Text="Delete" Width="59px" OnClick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Enter Roll No of the student Whose data is to be modified:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Enter which column you want to update:<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Enter new value:<br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update" />
            <br />
    
    
    </div>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Telephoneno" HeaderText="Telephoneno" SortExpression="Telephoneno" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:studpageConnectionString %>" DeleteCommand="DELETE FROM password WHERE (Telephoneno = '918451990431')" SelectCommand="SELECT * FROM [password]"></asp:SqlDataSource>
        <br />
        <br />
    
    
    </form>
</body>
</html>
