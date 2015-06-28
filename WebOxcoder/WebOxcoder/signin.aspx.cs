using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using Tools;

namespace WebOxcoder
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("userEmail");
            IBLL.IUser bll = BLLFactory.BLLAccess.CreateUser();
            int loginResult = bll.signIn(login_email.Text, login_password.Text);
            switch (loginResult)
            {
                case Config.PasswordFailed:
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('密码错误');</script>");
                    login_password.Text = "";
                    break;
                case Config.UserExist:
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('用户不存在');</script>");
                    login_email.Text = "";
                    login_password.Text = "";
                    break;
                case Config.Admin:
                    
                    cookie.Value = login_email.Text;
                    Response.AppendCookie(cookie);
                    Response.Redirect("/AdminHome.aspx"); 
                    break;
                case Config.Coder:
                    cookie.Value = login_email.Text;
                    Response.AppendCookie(cookie);
                    Response.Redirect("/coderHome.aspx"); 
                    break;
                case Config.Enterprise:
                    cookie.Value = login_email.Text;
                    Response.AppendCookie(cookie);
                    Response.Redirect("/enterpriseTask.aspx"); 
                    break;
            }
        }
    }
}