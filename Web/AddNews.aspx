<%@ Page Language="C#" ContentType="text/html" CodeBehind="~/AddNews.aspx.cs" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    public static string Replace_Enter(string str)
    {
        string temp = string.Empty;
        if (str.Contains("\n"))
        {
            temp = str.Replace("\n", "<br />");
            return temp;
        }
        if (str.Contains("\r"))
        {
            temp = str.Replace("\r", "<br />");
            return temp;
        }
        return str;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string News;

        string info;
        info = Request.QueryString["error"] ;
        if(info == "error")
        {
            Response.Write("编号存在");
        }
        //Request.Form("NewsContent");
        try
        {
            News = Request.Form["contentTxt"];
        }catch(Exception ee)
        {
            News = "录入失败： error Message :";
            Response.Write(News+ee.Message);
        }

        //News = Replace_Enter(News);



        string sqlstr = "Data Source=DESKTOP-9TOKESO;Initial Catalog=DBweb;Integrated Security=True";
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(sqlstr);
        conn.Open();
        string addInfo = "insert into T_News values('" + TextBox1.Text + "','" +classTxt.Text  + "','" + titleTxt.Text + "','" + News + "','" + timeTxt.Text + "')";
        // string searchInfo = "select * from";


        string selectInfo = "SELECT* FROM T_News WHERE NewsID ="+TextBox1.Text;

        System.Data.SqlClient.SqlCommand cmd = new  System.Data.SqlClient.SqlCommand(selectInfo, conn);

        System.Data.SqlClient.SqlDataReader dataRead = cmd.ExecuteReader();
        if (dataRead.Read())
        {


            Response.Redirect("AddNews.aspx?error="+"编号存在");
        }

        conn.Close();

        conn.Open();
        System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand(addInfo, conn);
        try
        {
            if (cmd.ExecuteNonQuery() > 0)
            {

                Response.Redirect("News.aspx");
            }
            else
            {

            }
        }
        catch (Exception ee)
        {
            Response.Write(ee.Message);
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加新闻</title>
<style type="text/css">
    <!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background: #42413C;
	margin: 0;
	padding: 0;
	color: #000;
}


ul, ol, dl { 
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;
	padding-right: 15px;
	padding-left: 15px;
}
a img {
	border: none;
}

a:link {
	color: #42413C;
	text-decoration: underline;
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus {
	text-decoration: none;
}

.container {
	width: 994px;
	background: #FFF;
	margin: 0 auto;
}

.header {
	background: #ADB96E;
}

.content {
    
	padding: 10px 0;
}

.footer {
	
	background: #CCC49F;
}

.fltrt {  
	float: right;
	margin-left: 8px;
}
.fltlft {
	float: left;
	margin-right: 8px;
}
.clearfloat { 
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


    .auto-style1 {
        width: 738px;
        height: 423px;
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
       
      
    <asp:Label ID="Label6" runat="server" Text="新闻编号："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
       
      
    <asp:Label ID="Label2" runat="server" Text="新闻标题："></asp:Label>
    <asp:TextBox ID="titleTxt" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="新闻类别："></asp:Label>
    <asp:TextBox ID="classTxt" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="新闻内容："></asp:Label>
    <textarea id="contentTxt" runat="server" class="auto-style1" name="contentTxt"></textarea><br />
    <asp:Label ID="Label5" runat="server" Text="新闻时间："></asp:Label>
    <asp:TextBox ID="timeTxt" runat="server"></asp:TextBox>
           
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发布" />
           
</div>
   
   

<div class="footer">
    <p>航空港校区 | 四川省成都市西南航空港经济开发区学府路一段24号 | 邮编：610225 | 电话：028-85966502
         成都市龙泉驿区阳光城幸福路10号 | 邮编：610103 | 电话：028-84833333
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
