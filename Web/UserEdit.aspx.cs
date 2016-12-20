using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace Web
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["UserID"];
            string sqlstr = "Data Source=DESKTOP-9TOKESO;Initial Catalog=DBweb;Integrated Security=True";
            SqlConnection conn = new SqlConnection(sqlstr);
            string selectInfo = "SELECT* FROM T_User WHERE UserID =" + ID;
            conn.Open();
            SqlCommand cmd = new SqlCommand(selectInfo, conn);
            
            DataSet ds = new DataSet();
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.Read())
            {
                UserID.Text = reader.GetString(reader.GetOrdinal("UserID"));
                UserName.Text = reader.GetString(reader.GetOrdinal("UserName"));
                UserPwd.Text = reader.GetString(reader.GetOrdinal("UserPwd"));
                UserAddr.Text = reader.GetString(reader.GetOrdinal("UserAddr"));
                UserGrade.Text = reader.GetString(reader.GetOrdinal("UserGrade"));
                UserSex.Text = reader.GetString(reader.GetOrdinal("UserSex"));
                UserSpec.Text = reader.GetString(reader.GetOrdinal("UserSpec"));
                UserAge.Text = reader.GetString(reader.GetOrdinal("UserAge"));
            }
            // 将DataTable绑定到DataGrid控件
            
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.User model = new Model.User();
            model.UserID = "不可更改！";
            model.UserAddr = UserAddr.Text;
            model.UserAge = UserAge.Text;
            model.UserGrade = "不可更改！";
            model.UserName = "不可更改！";
            model.UserPwd = UserPwd.Text ;
            model.UserSex = UserSex.Text;
            model.UserSpec = UserSpec.Text;

            BLL.User bll = new BLL.User(); 

        }


        
    }
}