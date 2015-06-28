using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;

namespace WebOxcoder
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            String email = signUpEmail.Text;
            String password = signUpPassword.Text;
            if (regflag.Text.Equals("1"))
            {
                IBLL.IUser iuser = BLLFactory.BLLAccess.CreateUser();
                IBLL.ICoder icoder=BLLFactory.BLLAccess.CreateCoder();
                if ((iuser.signUp(email, password)) == true)
                {
                    if ((icoder.AddCoder(email)) == true)
                    {
                        string url2 = "/coderSignUpResult.aspx";
                        Response.Redirect(url2);
                    }
                }
                else {
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('注册失败');</script>");
                }
            }
            else
            {
                IBLL.IEnterprise bll = BLLFactory.BLLAccess.CreateEnterprise();
                bool loginResult = bll.checkEnterprise(email);
                if (loginResult)
                {
                    String url1 = "/enterpriseSignUp1.aspx?email=" + email + "&password=" + password;
                    Response.Redirect(url1);
                }
            }
        }
    }
}