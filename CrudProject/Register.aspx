<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CrudProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div>
            <br />
           <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       </div>
       <div>
       <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
       </div>
       <div>
         <br />
         <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />&nbsp;&nbsp
         <asp:Button ID="Button2" runat="server" Text="Clear All" OnClick="Button2_Click" />
       </div>
       <div>
         <br />
         <asp:Button ID="Button3" runat="server" Text="Show Data" OnClick="Button3_Click" />
       </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="178px" Width="475px">
            <AlternatingRowStyle BackColor="White" />
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
    </form>
</body>
</html>
