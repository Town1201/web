<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<script runat="server">

    protected void btn_Admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }

    protected void btn_News_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AdminNews.aspx");
    }

    protected void btn_User_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminUser.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNews.aspx");
    }
</script>



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
            <asp:Button ID="btn_Admin" runat="server" Height="120px" OnClick="btn_Admin_Click" Text="管理员" Width="209px" />
            <br />
            <asp:Button ID="btn_News" runat="server" Height="120px" Text="新闻" Width="209px" OnClick="btn_News_Click1" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" DataKeyNames="NewsID" AllowPaging="True" Width="647px">
                <Columns>
                   <asp:BoundField DataField="NewsID" HeaderText="新闻编号" SortExpression="NewsID" />
                    <asp:BoundField DataField="NewsClass" HeaderText="新闻种类" SortExpression="NewsClass" />
                    <asp:BoundField DataField="NewsTitle" HeaderText="新闻标题" SortExpression="NewsTitle" />
                    
                    <asp:BoundField DataField="NewsTime" HeaderText="新闻时间" SortExpression="NewsTime" />
                    <asp:CommandField ShowDeleteButton="true" ButtonType="Button" />
                    <asp:CommandField ShowEditButton="true" ButtonType="Button" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBwebConnectionString %>" SelectCommand="SELECT * FROM [T_News]" DeleteCommand="delete from T_News where NewsID=@NewsID" UpdateCommand="update T_News set NewsTitle=@NewsTitle,NewsClass=@NewsClass,NewsTime=@NewsTime where NewsID=@NewsID">
                <UpdateParameters>
                <asp:Parameter Name="NewsTitle" Type="String" />
                <asp:Parameter Name="NewsClass" Type="String" />
                <asp:Parameter Name="NewsTime" Type="String" />
                
                <asp:Parameter DefaultValue="1" Name="NewsID" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter DefaultValue="1" Name="NewsID" />
            </DeleteParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="添加新闻" OnClick="Button1_Click" />
        </div>
        <div style="clear:both">


        </div>
    </div>
    </form>
</body>
</html>
