using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tools;

namespace WebOxcoder
{
    public partial class enterpriseRecommend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String serverURL = System.Configuration.ConfigurationManager.AppSettings["serverURL"];
            
            //String enterpriseEmail = Session["email"].ToString();
            String enterpriseEmail = "12301067@bjtu.edu.cn";

            IBLL.IChallenge ichallenge = BLLFactory.BLLAccess.CreateChallenge();
            IBLL.IChallengeRecord ichallengeRecord = BLLFactory.BLLAccess.CreateChallengeRecord();
            IBLL.ICoder icoder = BLLFactory.BLLAccess.CreateCoder();
            IBLL.IQuestionType iquestionType = BLLFactory.BLLAccess.CreateQuestionType();

            Model.challenge upToDateChallenge = ichallenge.getEnterpriseUpToDateChallenge(enterpriseEmail);
            IList<String> listCoderEmail = ichallengeRecord.getCoderEmailByChallengeID(upToDateChallenge.id);
            Model.type challengeType = iquestionType.getChallengeType(upToDateChallenge.type);
            List<Model.coder> listCoder = new List<Model.coder>();

            String type = challengeType.name;
            String typePic = PictureTool.getCorrePicName(type);

            foreach(var coderEmail in listCoderEmail) 
            {
                Model.coder c = icoder.getCoderByEmail(coderEmail);
                listCoder.Add(c);
            }

            listCoder = listCoder.OrderByDescending(lcoder => lcoder.price).ToList();

            int totalShow = 0;
            foreach (Model.coder coderShow in listCoder)
            {
                if (totalShow < 6)
                {
                    String star = showStar((int)coderShow.price);
                    recommendCoder.InnerHtml +=
                    "<div class=\"col-md-4\" style=\"margin-bottom: 20px;\">" +
                    "<div class=\"panel panel-default resume-block-simple\">" +
                    "<div class=\"panel-body\">" +
                    "<img src=\"img/" + typePic + ".png\" style=\"float: right;\">" +
                          "<h3>" + coderShow.name + "</h3>" +
                            "<p>" +
                                "<span class=\"resume-label\">推荐指数:</span>" +
                                 "<span class=\"resume-label\">" +
                                    star +
                                 "</span></p><p>" +
                                 "<span class=\"resume-label\">身价:</span><span class=\"resume-label\">" + coderShow.price + "</span>" +
                            "</p>" +
                    "</div>" +
                    "</div>" +
                    "<a href=\"enterpriseRecommendDetail.aspx?coderemail=" + Server.UrlEncode(coderShow.email) + "\">"+
                        "<div class=\"col-xs-12 corp-simple-action\">查看报告</div>" +
                    "</a>" +
                     "</div>";

                    totalShow++;
                }
                else
                {
                    break;
                }
            }
        }
        
        private String showStar(int price)
        {
            String star = "";
            int num;
             
            if (price>10000)
            {
               num=3;
            } 
            else if (price>5000)
            {
               num=2;
            } 
            else
            {
               num=1;
            }

            for (int i = 0; i < num; i++)
            {
                star = star + "<i class=\"fa fa-star\"></i>";
            }
            return star;
        }
    }
}