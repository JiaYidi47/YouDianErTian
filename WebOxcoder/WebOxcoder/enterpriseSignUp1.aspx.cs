using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebOxcoder
{
    public partial class enterpriseSignUp1 : System.Web.UI.Page
    {
        private String email;
        private String password;
        private String corpname;
        private String corppic;
        private String corpphone;

        private string uploadDirectory;  // 文件保存路径

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                email = Request.QueryString["email"];
                password = Request.QueryString["password"];

              
            }
        }

        public String upload(FileUpload fileUploader, String path)
        {
            // 以下代码是保持文件到服务器uploadDirectory中。
            //文件名确保不一样。
            string serverFileName = Path.GetFileName(path);
            string strDateTime = DateTime.Now.ToString("yyyyMMddHHmmss");
            // 默认将文件保存到站点根目录下的Uploads中
            uploadDirectory = Path.Combine(Request.PhysicalApplicationPath, "Uploads");
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

        //protected void signup1Button_Click(object sender, EventArgs e)
        //{
        //    if (filePic.PostedFile.FileName == "")
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('未选择文件');</script>");
        //    }
        //    else {
        //        corppic = upload(filePic, filePic.PostedFile.FileName);
        //    }

        //    corpname = fullName.Text;
        //    corpphone = phone.Text;

        //    String url2 = "/enterpriseSignUp2.aspx?email" + email + "&password" + password + "&corpname" + corpname + "&corppic" + corppic + "&corpphone" + corpphone;
        //    Response.Redirect(url2);
        //}

        protected void signup1Button_Click1(object sender, EventArgs e)
        {
            if (filePic.PostedFile.FileName == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('未选择文件');</script>");
            }
            else
            {
                corppic = upload(filePic, filePic.PostedFile.FileName);
            }

            corpname = fullName.Text;
            corpphone = phone.Text;

            String url2 = "/enterpriseSignUp2.aspx?email" + email + "&password" + password + "&corpname" + corpname + "&corppic" + corppic + "&corpphone" + corpphone;
            Response.Redirect(url2);
        }
    }
}