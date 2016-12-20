<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>

<!DOCTYPE html>
<script runat="server">

    protected void btn_News_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminNews.aspx");
    }

    protected void btn_User_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminUser.aspx");
    }

    protected void btn_Admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            background-color:#808080;
        }
        .container{
            
            text-align:center;
            margin-left:auto;
            margin-right:auto;
            padding:10px;
            
            height: 490px;
        }
        .lay_top{
            width:95%;
            height:60px;
            text-align:center;
            background-color:#f2e57e;
            
        }
        .lay_left_float{
            width:25%;
            height:420px;
            text-align:center;
            float:left;
            background-color:#b0a7a7;
           
        }
        .lay_right_float{
            width:70%;
            height:420px;
            text-align:left;
            float:left;
            background-color:#ffffff;
            
        }
        p{
            font-family:黑体;
            font-size:50px;
            text-align:center;
            height: 50px;
        }
        </style>
    
</head>
<body style="height: 521px">
    <form id="form1" runat="server">
        
    <div class="container">
        <div class="lay_top">
            <p>管理页面</p>
        </div>

        <div class="lay_left_float">

            <br />
            <asp:Button ID="btn_Admin" runat="server" Height="120px" Text="管理员" Width="209px" OnClick="btn_Admin_Click" />
            <br />
            <asp:Button ID="btn_News" runat="server" Height="120px" Text="新闻" Width="209px" OnClick="btn_News_Click" />
            <asp:Button ID="btn_User" runat="server" Height="120px" Text="用户" Width="209px" OnClick="btn_User_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>

        <div class="lay_right_float">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="UserID" Width="659px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserID" ReadOnly="true" HeaderText="编号" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="姓名" SortExpression="UserName" />
                <asp:BoundField DataField="UserPwd" HeaderText="密码" SortExpression="UserPwd" />
                <asp:BoundField DataField="UserSex" HeaderText="性别" SortExpression="UserSex" />
                <asp:BoundField DataField="UserAge" HeaderText="年龄" SortExpression="UserAge" />
                <asp:BoundField DataField="UserSpec" HeaderText="专业" SortExpression="UserSpec" />
                <asp:BoundField DataField="UserGrade" HeaderText="成绩" SortExpression="UserGrade" />
                <asp:BoundField DataField="UserAddr" HeaderText="地址" SortExpression="UserAddr" />
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
    
        </div>
        <div style="clear:both">


        </div>
    </div>
    </form>
</body>
</html>
