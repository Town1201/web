<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }



    protected void focusSelect(object sender, EventArgs e)
    {
        string title = this.GridView4.Rows[GridView4.SelectedIndex].Cells[0].Text;
        Response.Redirect("NewsInfo.aspx?NewsID="+title.ToString());
    }

    protected void noticeSelect(object sender, EventArgs e)
    {
        string title = this.GridView2.Rows[GridView2.SelectedIndex].Cells[0].Text;
        Response.Redirect("NewsInfo.aspx?NewsID="+title.ToString());
    }

    protected void sceSelect(object sender, EventArgs e)
    {
        string title = this.GridView3.Rows[GridView3.SelectedIndex].Cells[0].Text;
        Response.Redirect("NewsInfo.aspx?NewsID="+title.ToString());
    }

    protected void selectedIndex(object sender, EventArgs e)
    {
        string title = this.GridView1.Rows[GridView1.SelectedIndex].Cells[0].Text;
        Response.Redirect("NewsInfo.aspx?NewsID=" + title);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
    <!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background: #42413C;
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ 元素/标签选择器 ~~ */
ul, ol, dl { /* 由于浏览器之间的差异，最佳做法是在列表中将填充和边距都设置为零。为了保持一致，您可以在此处指定需要的数值，也可以在列表所包含的列表项（LI、DT 和 DD）中指定需要的数值。请注意，除非编写一个更为具体的选择器，否则您在此处进行的设置将会层叠到 .nav 列表。 */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* 删除上边距可以解决边距会超出其包含的 div 的问题。剩余的下边距可以使 div 与后面的任何元素保持一定距离。 */
	padding-right: 15px;
	padding-left: 15px; /* 向 div 内的元素侧边（而不是 div 自身）添加填充可避免使用任何方框模型数学。此外，也可将具有侧边填充的嵌套 div 用作替代方法。 */
}
a img { /* 此选择器将删除某些浏览器中显示在图像周围的默认蓝色边框（当该图像包含在链接中时） */
	border: none;
}
/* ~~ 站点链接的样式必须保持此顺序，包括用于创建悬停效果的选择器组在内。 ~~ */
a:link {
	color: #42413C;
	text-decoration: underline; /* 除非将链接设置成极为独特的外观样式，否则最好提供下划线，以便可从视觉上快速识别 */
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* 此组选择器将为键盘导航者提供与鼠标使用者相同的悬停体验。 */
	text-decoration: none;
}

/* ~~ 此固定宽度容器包含其它 div ~~ */
.container {
	width: 994px;
	background: #FFF;
	margin: 0 auto; /* 侧边的自动值与宽度结合使用，可以将布局居中对齐 */
}

/* ~~ 标题未指定宽度。它将扩展到布局的完整宽度。标题包含一个图像占位符，该占位符应替换为您自己的链接徽标 ~~ */
.header {
	background: #ADB96E;
}

/* ~~ 这是布局信息。 ~~ 

1) 填充只会放置于 div 的顶部和/或底部。此 div 中的元素侧边会有填充。这样，您可以避免使用任何“方框模型数学”。请注意，如果向 div 自身添加任何侧边填充或边框，这些侧边填充或边框将与您定义的宽度相加，得出 *总计* 宽度。您也可以选择删除 div 中的元素的填充，并在该元素中另外放置一个没有任何宽度但具有设计所需填充的 div。

*/

.content {
    
	padding: 10px 0;
}

/* ~~ 脚注 ~~ */
.footer {
	
	background: #CCC49F;
}

/* ~~ 其它浮动/清除类 ~~ */
.fltrt {  /* 此类可用于在页面中使元素向右浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: right;
	margin-left: 8px;
}
.fltlft { /* 此类可用于在页面中使元素向左浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* 如果从 #container 中删除或移出了 #footer，则可以将此类放置在 <br /> 或空 div 中，作为 #container 内最后一个浮动 div 之后的最终元素 */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
-->
</style>

<style type="text/css">
.imcm ul, .imcm li, .imcm div, .imcm span, .imcm a {
    text-align: left;
    vertical-align: top;
    padding: 0px;
    margin: 0;
    list-style: none outside none;
    border-style: none;
    background-image: none;
    clear: none;
    float: none;
    display: block;
    position: static;
    overflow: visible;
    line-height: normal;
}

    .imcm li a img {
        display: inline;
        border-width: 0px;
    }

.imcm span {
    display: inline;
}

.imcm .imclear, .imclear {
    clear: both;
    height: 0px;
    visibility: hidden;
    line-height: 0px;
    font-size: 1px;
}

.imcm .imsc {
    position: relative;
}

.imcm .imsubc {
    position: absolute;
    visibility: hidden;
}

.imcm li {
    list-style: none;
    font-size: 1px;
    float: left;
}

.imcm ul ul li {
    width: 100%;
    float: none !important;
}

.imcm a {
    display: block;
    position: relative;
}

.imcm ul .imsc, .imcm ul .imsubc {
    z-index: 10;
}

.imcm ul ul .imsc, .imcm ul ul .imsubc {
    z-index: 20;
}

.imcm ul ul ul .imsc, .imcm ul ul ul .imsubc {
    z-index: 30;
}

.imde ul li:hover .imsubc {
    visibility: visible;
}

.imde ul ul li:hover .imsubc {
    visibility: visible;
}

.imde ul ul ul li:hover .imsubc {
    visibility: visible;
}

.imde li:hover ul .imsubc {
    visibility: hidden;
}

.imde li:hover ul ul .imsubc {
    visibility: hidden;
}

.imde li:hover ul ul ul .imsubc {
    visibility: hidden;
}

.imcm .imea {
    display: block;
    position: relative;
    left: 0px;
    font-size: 1px;
    line-height: 1px;
    height: 0px;
    width: 1px;
    float: right;
}

.imcm .imea span {
    display: block;
    position: relative;
    font-size: 1px;
    line-height: 0px;
}

.dvs, .dvm {
    border-width: 0px;
}
</style>
    <!--[if IE]><style type="text/css">.imcm .imea span{position:absolute;}.imcm .imclear,.imclear{display:none;}.imcm{zoom:1;} .imcm li{curosr:hand;} .imcm ul{zoom:1}.imcm a{zoom:1;}</style><![endif]-->
    <!--[if gte IE 7]><style type="text/css">.imcm .imsubc{background-image:url(ie_css_fix);}</style><![endif]-->
    <!--end-->

    <!--[imstyles] *** Infinite Menu Styles: Keep this section in the document head for full validation. -->

<style type="text/css">


	/* --[[ Main Expand Icons ]]-- */
	#imenus0 .imeam span,#imenus0 .imeamj span {background-image:url(none); width:7px; height:5px; left:-7px; top:5px; background-repeat:no-repeat;background-position:top left;}
	#imenus0 li:hover .imeam span,#imenus0 li a.iactive .imeamj span {background-image:url(none); background-repeat:no-repeat;background-position:top left;}


	/* --[[ Sub Expand Icons ]]-- */
	#imenus0 ul .imeas span,#imenus0 ul .imeasj span {background-image:url(none); width:5px; height:7px; left:-5px; top:3px; background-repeat:no-repeat;background-position:top left;}
	#imenus0 ul li:hover .imeas span,#imenus0 ul li a.iactive .imeasj span {background-image:url(none); background-repeat:no-repeat;background-position:top left;}


	/* --[[ Main Container ]]-- */
	#imouter0 {border-style:none; border-color:#6a6a6a; border-width:1px; padding:0px; margin:10px 0px 0px; }


	/* --[[ Sub Container ]]-- */
	#imenus0 li ul {background-color:#cccccc; border-style:solid; border-color:#999999; border-width:1px; padding:0px; margin:4px 0px 0px; }


	/* --[[ Main Items ]]-- */
	#imenus0 li a, #imenus0 .imctitle {color:#666666; text-align:left; font-family:Arial; font-size:12px; font-weight:bold; text-decoration:none; border-style:solid; border-color:#666666; border-width:0px 0px 8px; padding:2px 0px 4px 2px; margin:0px 2px 0px 0px; }

		/* [hover] - These settings must be duplicated for IE compatibility.*/
		#imenus0 li:hover>a {color:#000000; border-color:#ff0000; }
		#imenus0 li a.ihover, .imde imenus0 a:hover {color:#000000; border-color:#ff0000; }

		/* [active] */
		#imenus0 li a.iactive {}


	/* --[[ Sub Items ]]-- */
	#imenus0 ul a, #imenus0 .imsubc li .imctitle  {color:#000000; text-align:left; font-size:11px; font-weight:normal; text-decoration:none; border-style:none; border-color:#000000; border-width:1px; padding:3px 2px 3px 3px; margin:0px; }

		/* [hover] - These settings must be duplicated for IE comptatibility.*/
		#imenus0 ul li:hover>a {background-color:#999999; color:#ffffff; }
		#imenus0 ul li a.ihover {background-color:#999999; color:#ffffff; }

		/* [active] */
		#imenus0 ul li a.iactive {}


    .auto-style2 {
        width: 205px;
    }


    .auto-style4 {
        width: 388px;
    }
    

    .auto-style7 {
        width: 100%;
        height: 370px;
    }
    

    </style>

</head>

<body>

    <form id="form1" runat="server">

<div class="container">
  <div class="header"><a href="#"><img src="" alt="在此处插入徽标" name="Insert_logo" width="180" height="90" id="Insert_logo" style="background: #C6D580; display:block;" /></a> 
    <!-- end .header --></div>
    





<div class="imrcmain0 imgl" style="width: 993px; z-index: 999999; position: relative; top: 0px; left: 0px; height: 43px;">
    <div class="imcm imde" id="imouter0">
        <ul id="imenus0">
            <li class="imatm" style="width: 99px;"><a class="" href="#"><span class="imea imeam"><span></span></span>学校概况</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">学校简介</a></li>
                            <li><a href="#">学校历史</a></li>
                            <li><a href="#">历任领导</a></li>
                            <li><a href="#">现任领导</a></li>
                            <li><a href="#">校园风光</a></li>
                        </ul>
                    </div>
                </div>
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>机构设置</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">机关部处</a></li>
                            <li><a href="#">教学部门</a></li>
                            <li><a href="#">业务与产业部门</a></li>
                        </ul>
                    </div>
                </div>
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>师资队伍</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">师资概况</a></li>
                            <li><a href="#">名师风采</a></li>
                            <li><a href="#">人才招聘</a></li>

                        </ul>
                    </div>
                </div>
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>人才培养</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">本科教育</a></li>
                            <li><a href="#">研究生教育</a></li>
                            <li><a href="#">继续教育</a></li>
                            <li><a href="#">学生工作</a></li>
                            <li><a href="#">国防生教育</a></li>
                            <li><a href="#">独立学院</a></li>
                        </ul>
                    </div>
                </div>
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>科学研究</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">科研管理</a></li>
                            <li><a href="#">重点学科</a></li>
                            <li><a href="#">重点实验室</a></li>
                            <li><a href="#">哲社基地</a></li>
                            <li><a href="#">学报</a></li>
                            <li><a href="#">数据平台</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>招生就业</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">本科招生</a></li>
                            <li><a href="#">研究生招生</a></li>
                            <li><a href="#">留学生招生</a></li>
                            <li><a href="#">继续教育招生</a></li>
                            <li><a href="#">就业信息网</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>合作交流</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">国际交流</a></li>
                            <li><a href="#">局校合作</a></li>
                            <li><a href="#">校地合作</a></li>

                        </ul>
                    </div>
                </div>
            </li>
            <li class="imatm" style="width: 99px;"><a href="News.aspx"><span class="imea imeam"><span></span></span>新闻中心</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="#">成信新闻</a></li>
                            <li><a href="#">媒体成信</a></li>
                            <li><a href="#">电子校报</a></li>
                            <li><a href="#">官方微信</a></li>
                            <li><a href="#">官方微博</a></li>
                            <li><a href="#">成信视频</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>用户登录</a>

                <div class="imsc">
                    <div class="imsubc" style="width: 97px; top: -4px; left: 0px;">
                        <ul style="">
                            <li><a href="Login.aspx">用户登录</a></li>
                            <li><a href="AdminLogin.aspx">管理员登录</a></li>
                            
                        </ul>
                    </div>
                </div>
            </li>

            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>校友总会</a>

            </li>

        </ul>

       
        <div class="imclear">&nbsp;</div>
    </div>
</div>




<div class="content" >
       
        
    <asp:ImageMap ID="ImageMap1" runat="server" Height="284px" ImageUrl="~/images/p2.PNG" Width="986px">
    </asp:ImageMap>
           
    <hr noshade="noshade" style="color: #008000" />
           
</div>

    <div>

        <table class="auto-style7">
            <tr>
                <td class="auto-style2" bgcolor="#FFFFCC" rowspan="3">
                    <table style="width: 100%; height: 356px;">
                        <tr>
                            <td align="center">校内导航</td>
                        </tr>
                        <tr>
                            <td align="center">校园门户</td>
                        </tr>
                        <tr>
                            <td align="center">邮件系统</td>
                        </tr>
                        <tr>
                            <td align="center">网格存储</td>
                        </tr>
                        <tr>
                            <td align="center">馆藏资源</td>
                        </tr>
                        <tr>
                            <td align="center">教学平台</td>
                        </tr>
                        <tr>
                            <td align="center">信息公开</td>
                        </tr>
                        <tr>
                            <td align="center">书记校长信箱</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" bgcolor="#CCFFCC">
                    <div style="margin:auto">

                        综合新闻&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/more.png"/>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="None" PageSize="5" Width="383px" Height="176px" ForeColor="#333333" OnSelectedIndexChanged="selectedIndex" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="NewsID" HeaderText="ID" HeaderStyle-Width="10px" SortExpression="NewsID" />
                            <asp:BoundField DataField="NewsTitle" HeaderText="Title" HeaderStyle-Width="230" SortExpression="NewsTitle" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NewsTime" HeaderText="Time" HeaderStyle-Width="50px" SortExpression="NewsTime" >
                            </asp:BoundField>
                            <asp:CommandField ShowSelectButton="true" ButtonType="Image" HeaderStyle-Width="10px" SelectImageUrl="~/images/more.png" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBwebConnectionString %>" SelectCommand="SELECT NewsID, NewsTitle, NewsTime FROM T_News" OnSelecting="SqlDataSource1_Selecting">
                        </asp:SqlDataSource>
                    </td>
                    </div>
                    &nbsp;</td>
                <td bgcolor="#CCFFCC">
                    <div style="margin:auto">

                        焦点新闻&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/more.png"/>

                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="376px" OnSelectedIndexChanged="focusSelect" AllowPaging="True" PageSize="5">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="NewsID" HeaderStyle-Width="10" HeaderText="ID" SortExpression="NewsID" />
                                <asp:BoundField DataField="NewsTitle" HeaderText="Title" HeaderStyle-Width="230" SortExpression="NewsTitle" >
                                </asp:BoundField>
                                <asp:BoundField DataField="NewsTime" HeaderText="Time" HeaderStyle-Width="50" SortExpression="NewsTime" >
                                </asp:BoundField>
                                <asp:CommandField ShowSelectButton="true" ButtonType="Image" HeaderStyle-Width="10px" SelectImageUrl="~/images/more.png" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBwebConnectionString %>" SelectCommand="SELECT [NewsID], [NewsTitle], [NewsTime] FROM [T_News] where NewsClass='焦点新闻'"></asp:SqlDataSource>

                    </div>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#CCFFCC" class="auto-style4">
                    <div style="margin:auto">
                        <asp:Label ID="Label2" runat="server" Text="信息公告"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/more.png" />

                        
                               

                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="197px" Width="383px" OnSelectedIndexChanged="noticeSelect" AllowPaging="True" PageSize="5">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="NewsID" HeaderStyle-Width="10"  HeaderText="NewsID" SortExpression="NewsID" />
                                <asp:BoundField DataField="NewsTitle" HeaderText="Title" HeaderStyle-Width="230px" SortExpression="NewsTitle" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NewsTime" HeaderText="Time" HeaderStyle-Width="50px" SortExpression="NewsTime" >
                              
                            </asp:BoundField>
                                <asp:CommandField ShowSelectButton="true" ButtonType="Image" HeaderStyle-Width="10px" SelectImageUrl="~/images/more.png" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBwebConnectionString %>" SelectCommand="SELECT NewsID, NewsTitle, NewsTime FROM T_News WHERE (NewsClass = '信息公告')">                            
                        </asp:SqlDataSource>

                        

                    </div>
                    &nbsp;</td>
                <td bgcolor="#CCFFCC">
                    <div style="margin:auto">
                        学术动态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/more.png"/>

                       

                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="199px" Width="394px" OnSelectedIndexChanged="sceSelect" AllowPaging="True" PageSize="5">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="NewsID" HeaderText="NewsID" HeaderStyle-Width="10" SortExpression="NewsID" />
                                <asp:BoundField DataField="NewsTitle" HeaderText="Title" HeaderStyle-Width="230px" SortExpression="NewsTitle" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NewsTime" HeaderText="Time" HeaderStyle-Width="50px" SortExpression="NewsTime" >
                            </asp:BoundField>
                                <asp:CommandField ShowSelectButton="true" ButtonType="Image" HeaderStyle-Width="10px" SelectImageUrl="~/images/more.png" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBwebConnectionString %>" SelectCommand="SELECT NewsID, NewsTitle, NewsTime FROM T_News WHERE (NewsClass = '学术动态')"></asp:SqlDataSource>

                    </div>
                    &nbsp;</td>
            </tr>
        </table>
        <hr noshade="noshade" style="height: 4px; color: #008000" />
        <br />

    </div>



<div class="footer">
    <p>航空港校区 | 四川省成都市西南航空港经济开发区学府路一段24号 | 邮编：610225 | 电话：028-85966502
        />

龙 泉 校 区 | 成都市龙泉驿区阳光城幸福路10号 | 邮编：610103 | 电话：028-84833333
        <br />

蜀ICP备05006389号-1 Copyright 2003-2016 成都信息工程大学　建议使用IE8.0,1024*860以上浏览   
</p>
    <!-- end .footer -->
</div>
 <!-- end .container -->

</div>
    </form>
</body>
</html>
