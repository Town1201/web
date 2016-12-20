using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.Admin model = new Model.Admin();
            model.AdminID = IDText.Text;
            model.AdminPwd = PwdText.Text;
            BLL.Admin bll = new BLL.Admin();
            int str = bll.SelectAdmin(model);

            if (str != 0)
            {
                Response.Write("<script language='javascript'>alert('登陆成功！');</script>");

                //Response.Redirect("UserEdit.aspx?UserID=" + model.UserID);
            }
            else
            {
                Response.Write("<script language='javascript'>alert('用户名或密码错误');</script>");
            }
        }
    }

    
}