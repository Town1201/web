<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Request.QueryString["NewsID"];
        int count = 0;

        string sqlstr = "Data Source=DESKTOP-QNHR4R3;Initial Catalog=DBweb;Integrated Security=True";
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(sqlstr);
        string selectInfo = "SELECT * FROM T_News WHERE NewsID =" + str;
        conn.Open();
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(selectInfo, conn);
        Response.Write(str);
        System.Data.DataSet ds = new System.Data.DataSet();
        System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();
        if(reader.Read())
        {
            timeTxt.Text = reader.GetString(reader.GetOrdinal("NewsTime"));
            titleTxt.Text = reader.GetString(reader.GetOrdinal("NewsTitle"));
            classTxt.Text = reader.GetString(reader.GetOrdinal("NewsClass"));
            TextArea1.Value =reader.GetString(reader.GetOrdinal("NewsContent"));
            
            
        }
        conn.Close();

        conn.Open();
        count = Convert.ToInt32(cmd.ExecuteScalar());
        count++; 
        TextBox1.Text =  count.ToString();
        
        string addInfo = "update T_News set NewsCount='"+count+"' where NewsID="+str;

        System.Data.SqlClient.SqlCommand cmdadd = new System.Data.SqlClient.SqlCommand(addInfo, conn);
       
        cmdadd.ExecuteNonQuery();

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


    .center{
        width:380px;
        margin:auto;
    }

    .auto-style1 {
        width: 682px;
        height: 448px;
    }

    </style>

</head>

<body>

    <form id="form1" runat="server">

<div class="container">
  <div class="header"><a href="#"><img src=".\images\a.png" alt="在此处插入徽标" name="Insert_logo" width="240" height="90" id="Insert_logo" style="background: #C6D580; display:block;" /></a> 
    <!-- end .header --></div>
    





<div class="imrcmain0 imgl" style="width: 993px; z-index: 999999; position: relative; top: 0px; left: 0px; height: 43px;">
    <div class="imcm imde" id="imouter0">
        <ul id="imenus0">
            <li class="imatm" style="width: 99px;"><a class="" href="WebForm_Main_CUIT.aspx"><span class="imea imeam"><span></span></span>学校首页</a>
               
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>新闻首页</a>
               
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>综合新闻</a>
                
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>信息公告</a>
               
            </li>


            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>焦点新闻</a>

                
            </li>

            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>学术动态</a>
                
            </li>
            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>工作交流</a>
                
            </li>
            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>文化活动</a>
               
            </li>

            <li class="imatm" style="width: 99px;"><a href="#"><span class="imea imeam"><span></span></span>媒体成信</a>
                
            </li>

            
        </ul>

       
        <div class="imclear">&nbsp;</div>
    </div>
</div>

    


<div class="content" runat="server" style="align-content:center" >
       
    
    
    <asp:Label ID="Label1" runat="server" Text="新闻标题："></asp:Label><asp:TextBox ID="titleTxt" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="新闻类别："></asp:Label><asp:TextBox ID="classTxt" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="新闻内容："></asp:Label>
    <br />
    <textarea id="TextArea1" runat="server" class="auto-style1" name="content"></textarea><br />
    <asp:Label ID="Label4" runat="server" Text="新闻时间："></asp:Label><asp:TextBox ID="timeTxt" runat="server"></asp:TextBox>
    
       
       
      
       <br />
    <asp:Label ID="Label5" runat="server" Text="访问次数："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
       
       
      
       </div>    
    
           
</div>
   
   

<div class="footer">
    <p>航空港校区 | 四川省成都市西南航空港经济开发区学府路一段24号 | 邮编：610225 | 电话：028-85966502
          <br/>

龙 泉 校 区 | 成都市龙泉驿区阳光城幸福路10号 | 邮编：610103 | 电话：028-84833333
         电话：028-84833333
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


