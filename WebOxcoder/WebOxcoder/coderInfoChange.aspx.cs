using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using IBLL;
using Model;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class coderInfoChange : System.Web.UI.Page
    {
        string coderEmail = "";
        ICoder coder = BLLFactory.BLLAccess.CreateCoder();
        coder co ;
        //coder coderCommit = new Model.coder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                show();
            }
            //string coderName = Request.QueryString["name"];
            //string coderAge = Request.QueryString["age"];
            //string coderGender = Request.QueryString["gender"];
            //string coderPhone = Request.QueryString["phone"];

            //name.InnerHtml = "<label>"+
            //                    "<h3 class=\"grey\">真实姓名</h3>"+
            //                "</label>"+
            //                "<asp:TextBox type=\"text\" id=\"gName\" value=\""+coderName+"\" class=\"form-control\" placeholder=\"\" runat=\"Server\"/>";

            //age.InnerHtml = "<label>" +
            //                    "<h3 class=\"grey\">年龄</h3>" +
            //                "</label>" +
            //                "<asp:TextBox type=\"text\" id=\"gAge\" value=\""+coderAge+"\" class=\"form-control\" runat=\"Server\"/> <span class=\"text-danger\" id=\"error1\" style=\"display: none;\"></span> <span class=\"help-block\" id=\"hint1\" />";

            //phone.InnerHtml = "<label>" +
            //                    "<h3 class=\"grey\">手机</h3>" +
            //                  "</label>" +
            //                  "<asp:TextBox type=\"text\" ID=\"gPhone\" value=\"" + coderPhone + "\" class=\"form-control\" runat=\"Server\"/>";


        }

        private void show()
        {
            coderEmail = "12301060@bjtu.edu.cn";
            co = coder.getCoderByEmail(coderEmail);
            gName.Text = co.name;
            gAge.Text = co.age.ToString();
            gPhone.Text = co.phone;
        }

        protected void save_Click(object sender, EventArgs e)
        {
            coderEmail = "12301060@bjtu.edu.cn";
            co = coder.getCoderByEmail(coderEmail);
            co.email = coderEmail;

            co.name = gName.Text.Trim().ToString();
            co.age = Int32.Parse(gAge.Text);
            co.phone = gPhone.Text.Trim().ToString();

            if (coder.changeCoderInfo(co))
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('修改成功!');location.href='coderInfo.aspx';");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('修改失败!');location.href='coderInfoChange.aspx';");
                Response.Write("</script>");
            }
        
        }
        
    }
}