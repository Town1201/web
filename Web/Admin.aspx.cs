using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CUIT_Client_Web
{
    public partial class leader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void button1_Click1(object sender, EventArgs e)
        {
            Model.Admin model = new Model.Admin();
            model.AdminID = TextBox1.Text;
            model.AdminPwd = TextBox2.Text;
            model.AdminName = TextBox3.Text;
            model.AdminSex = TextBox4.Text;
            model.AdminAge = TextBox5.Text;
            model.AdminAddr = TextBox6.Text;
            BLL.Admin bll = new BLL.Admin();
            bll.AddAdmin(model);
            Response.Redirect("Admin.aspx");

        }

        protected void btn_Admin_Click(object sender, EventArgs e)
        {

        }

        protected void btn_News_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminNews.aspx");
        }

        protected void btn_User_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUser.aspx");
        }
    }
}