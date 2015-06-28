using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseSignUp3 : System.Web.UI.Page
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

        }

        protected void signup3Button_Click(object sender, EventArgs e)
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
            tags = tagstr.Text;

            String url4 = "/enterpriseSignUp4.aspx?email" + email + "&password" + password + "&name" + name + "&pic" + pic + "&phone" + phone + "&shortname" + shortname + "&logo" + logo + "&website" + website + "&province" + province + "&city" + city + "&scale" + scale + "&info" + info + "&tasg" + tags;
            Response.Redirect(url4);
        }
    }
}