using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebOxcoder
{
    public partial class enterpriseSignUp2 : System.Web.UI.Page
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

        private string uploadDirectory;  // 文件保存路径

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                email = Request.QueryString["email"];
                password = Request.QueryString["password"];
                name = Request.QueryString["corpname"];
                corpName2.Text = name;
                pic = Request.QueryString["corpic"];
                phone = Request.QueryString["corpphone"];

            }
        }

        public String upload(FileUpload fileUploader, String path)
        {
            // 以下代码是保持文件到服务器uploadDirectory中。
            //文件名确保不一样。

            // 默认将文件保存到站点根目录下的Uploads中
            uploadDirectory = Path.Combine(Request.PhysicalApplicationPath, "Uploads");
            string serverFileName = Path.GetFileName(path);
            string strDateTime = DateTime.Now.ToString("yyyyMMddHHmmss");
            string fileName = strDateTime + Guid.NewGuid().ToString().Substring(0, 8) + serverFileName;
            string fullUploadPath = Path.Combine(uploadDirectory, fileName);
            try
            {
                fileUploader.PostedFile.SaveAs(fullUploadPath);  // 上传文件
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            return fullUploadPath;
        }

        protected void signup2Button_Click(object sender, EventArgs e)
        {
            if (corpLogo.PostedFile.FileName == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('未选择文件');</script>");
            }
            else
            {
                logo = upload(corpLogo, corpLogo.PostedFile.FileName);
            }
            shortname = corpSname.Text;
            website = corpWebsite.Text;
            province = Request[corpProvince.UniqueID];
            city = Request[corpCity.UniqueID];
            scale = Request[corpScale.UniqueID];
            info = corpInfo.Text;


            String url3 = "/enterpriseSignUp3.aspx?email" + email + "&password" + password + "&name" + name + "&pic" + pic + "&phone" + phone + "&shortname" + shortname + "&logo" + logo + "&website" + website + "&province" + province + "&city" + city + "&scale" + scale + "&info" + info;
            Response.Redirect(url3);
        }
    }
}