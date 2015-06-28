using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseInvite : System.Web.UI.Page
    {
        string title;
        Model.enterprise enterprise;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string email = Request.QueryString["email"];
                if (email == null) { }
                else
                {
                    IBLL.IEnterprise ienterprise = BLLFactory.BLLAccess.CreateEnterprise();
                   enterprise = ienterprise.getEnterpriseByEmail(email);
                    showRest(email);
                    
                }
            }
        }

        void showRest(string email) {
            restNum.InnerHtml+=
              "<label>"+
              "<span class=\"grey\">输入邮箱地址(剩余邀请数："+enterprise.restInvite+")"+
										"</span>"+
                                        "</label>";
             title=enterprise.shortName+"-在线笔试邀请函";
            inviteTitle.InnerHtml +=
                            "<input  readonly type=\"text\"  class=\"form-control\" value=" + title + ">";
        }

        protected void sendEmail_ServerClick(object sender, EventArgs e)
        {
            if (enterprise.restInvite < 0)
            {

            }
            else
            {
                string content = "我们非常高兴地通知您，您已通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[[职位]]的在线编程挑战，希望您能完成！";
                string adress = emailAddress.Value.ToString();
                Tools.Mail mail = new Tools.Mail("1198974650@qq.com", "OxCoder", "12301117@bjtu.edu.cn", "猿圈用户", title, content, "smtp.qq.com", 25, "1198974650", "daxue12301117", false, null);
                mail.Send();

            }
        }
    }
}