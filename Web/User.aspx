<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Web.User1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="UserID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserID" ReadOnly="true" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="UserPwd" HeaderText="UserPwd" SortExpression="UserPwd" />
                <asp:BoundField DataField="UserSex" HeaderText="UserSex" SortExpression="UserSex" />
                <asp:BoundField DataField="UserAge" HeaderText="UserAge" SortExpression="UserAge" />
                <asp:BoundField DataField="UserSpec" HeaderText="UserSpec" SortExpression="UserSpec" />
                <asp:BoundField DataField="UserGrade" HeaderText="UserGrade" SortExpression="UserGrade" />
                <asp:BoundField DataField="UserAddr" HeaderText="UserAddr" SortExpression="UserAddr" />
                <asp:CommandField ShowEditButton="true" ButtonType="Button" />
                <asp:CommandField ShowDeleteButton="true" ButtonType="Button" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBwebConnectionString %>" SelectCommand="SELECT * FROM [T_User]" DeleteCommand="delete from T_User where UserID=@UserID" UpdateCommand="update T_User set UserName=@UserName, UserPwd=@UserPwd, UserSex=@UserSex, UserAge=@UserAge, UserSpec=@UserSpec, UserGrade=@UserGrade, UserAddr=@UserAddr where UserID=@UserID">
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="UserPwd" Type="String" />
                <asp:Parameter Name="UserSex" Type="String" />
                <asp:Parameter Name="UserAge" Type="String" />
                <asp:Parameter Name="UserSpec" Type="String" />
                <asp:Parameter Name="UserGrade" Type="String" />
                <asp:Parameter Name="UserAddr" Type="String" />
                <asp:Parameter DefaultValue="1" Name="UserID" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter DefaultValue="1" Name="UserID" />
            </DeleteParameters>
        </asp:SqlDataSource>
    
        <asp:Button ID="Button1" runat="server" Text="添加学生信息" />
    
    </div>
    </form>
</body>
</html>
