using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace WebOxcoder
{
    public partial class enterpriseSignUp4 : System.Web.UI.Page
    {
        private String email;
        private String password;
        private String name;
        private String pic;
        private String phone;
        private String shortname;
        private String logo;
        private String website;
        private String province;
        private String city;
        private String scale;
        private String info;
        private String tags;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                email = Request.QueryString["email"];
                password = Request.QueryString["password"];
                name = Request.QueryString["corpname"];
                pic = Request.QueryString["corpic"];
                phone = Request.QueryString["corpphone"];
                shortname = Request.QueryString["shortname"];
                logo = Request.QueryString["logo"];
                website = Request.QueryString["website"];
                province = Request.QueryString["province"];
                city = Request.QueryString["city"];
                scale = Request.QueryString["scale"];
                info = Request.QueryString["info"];
                tags = Request.QueryString["tags"];

                IBLL.IEnterprise bll = BLLFactory.BLLAccess.CreateEnterprise();
                IBLL.IUser iuser = BLLFactory.BLLAccess.CreateUser();
                
                enterprise enterpriseItem = new enterprise
                {
                    email = email,
                    shortName = shortname,
                    fullName = name,
                    location = province + city,
                    introduction = info,
                    scale = scale,
                    website = website,
                    logo = logo,
                    label = tags
                };
                iuser.signUp(email, password);
                bool addResult = bll.addEnterprise(enterpriseItem);
                if (addResult)
                {
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('注册成功');</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('注册失败');</script>");
                }
            }

        }
    }
}