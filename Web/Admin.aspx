<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CUIT_Client_Web.leader" %>

<!DOCTYPE html>

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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="122px" Width="619px" DataKeyNames="AdminID">
                <Columns>
                    <asp:BoundField DataField="AdminID" HeaderText="用户名" SortExpression="AdminID" />
                    <asp:BoundField DataField="AdminPwd" HeaderText="密码" SortExpression="AdminPwd" />
                    <asp:BoundField DataField="AdminName" HeaderText="姓名" SortExpression="AdminName" />
                    <asp:BoundField DataField="AdminSex" HeaderText="性别" SortExpression="AdminSex" />
                    <asp:BoundField DataField="AdminAge" HeaderText="年龄" SortExpression="AdminAge" />
                    <asp:BoundField DataField="AdminAddr" HeaderText="地址" SortExpression="AdminAddr" />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBwebConnectionString %>" SelectCommand="SELECT * FROM [T_Admin]" DeleteCommand="delete from T_Admin where AdminID=@AdminID" UpdateCommand="update T_Admin set AdminPwd=@AdminPwd, AdminName=@AdminName, AdminSex=@AdminSex,AdminAge=@AdminAge ,AdminAddr=@AdminAddr where AdminID=@AdminID ">
                <UpdateParameters>
                <asp:Parameter Name="AdminName" Type="String" />
                <asp:Parameter Name="AdminPwd" Type="String" />
                <asp:Parameter Name="AdminSex" Type="String" />
                <asp:Parameter Name="AdminAge" Type="String" />          
                <asp:Parameter Name="AdminAddr" Type="String" />
                <asp:Parameter DefaultValue="1" Name="AdminID" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter DefaultValue="1" Name="AdminID" />
            </DeleteParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="账号："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="姓名："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="性别："></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="年龄："></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="地址："></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="button1" runat="server" OnClick="button1_Click1" Text="添加管理员" />
        </div>
        <div style="clear:both">


        </div>
    </div>
    </form>
</body>
</html>
