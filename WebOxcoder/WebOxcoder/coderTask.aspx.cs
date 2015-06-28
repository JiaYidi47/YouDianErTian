using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tools;

namespace WebOxcoder
{
    public partial class coderTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            //String coderEmail = Session["coderemail"].ToString();
            String coderEmail = "12301060@bjtu.edu.cn";

            sqlOperation();
            
            IBLL.ICoder icoder = BLLFactory.BLLAccess.CreateCoder();
            IBLL.IChallenge ichallenge = BLLFactory.BLLAccess.CreateChallenge();
            IBLL.IQuestionType iquestionType = BLLFactory.BLLAccess.CreateQuestionType();
            IBLL.IQuestion iquestion = BLLFactory.BLLAccess.CreateQuestion();
            IBLL.IEnterprise ienterprise = BLLFactory.BLLAccess.CreateEnterprise();
            IBLL.IChallengeRecord ichallengeRecord = BLLFactory.BLLAccess.CreateChallengeRecord();

            Model.coder c = icoder.getCoderByEmail(coderEmail);

            IList<Model.challenge> acceptChallengeList = ichallenge.searchByCoderEmail(coderEmail);

            if (acceptChallengeList.Count() == 0)
            {
                challengeItem.InnerHtml += "<div class=\"alert alert-info\" style=\"text-align: center\" role=\"alert\">没有接受任何招聘信息</div>";
            }
            else
            {
                foreach (Model.challenge challengeShow in acceptChallengeList)
                {
                    if (challengeShow.state == 0)
                        continue;

                    Model.type challengeType = iquestionType.getChallengeType(challengeShow.type);
                    Model.question question1 = iquestion.getQuestionByID(challengeShow.question1ID);
                    Model.question question2 = iquestion.getQuestionByID(challengeShow.question2ID);
                    Model.question question3 = iquestion.getQuestionByID(challengeShow.question3ID);
                    Model.enterprise company = ienterprise.getEnterpriseByEmail(challengeShow.companyEmail);
                    Model.challengeRecord record = ichallengeRecord.getChallengeRecByChaIdAndCodEmail(challengeShow.id, coderEmail);
                    int haveAcceptCount = ichallengeRecord.getHaveAcceptCountById(challengeShow.id);

                    String ifPass = "", PassStr = "", startButton = "重新挑战", passImg = "";
                    if (record.result == "整体通过")
                    {
                        ifPass = "success";
                        PassStr = "挑战通过!";
                        passImg = "style=\"background-image: url(img/pass2.png); background-repeat: no-repeat; background-position: 90% 55%;\"";
                    }
                    else if (record.result == "整体失败")
                    {
                        ifPass = "fail";
                        PassStr = "挑战没有通过!";
                        passImg = "style=\"background-image: url(img/pass1.png); background-repeat: no-repeat; background-position: 90% 55%;\"";
                    }
                    else if (record.result == "尚未挑战")
                    {
                        ifPass = "ongoing";
                        startButton = "开始挑战";
                    }
                    else
                    {
                        continue;
                    }

                    string lable = company.label;
                    string[] subLable = lable.Split(new char[] { ';' });

                    challengeItem.InnerHtml +=
                        "<div class=\"col-md-3\">" +
                        "<section id=\"Section2\">" +
                        "<div class=\"panel panel-default shadow-effect\"" + passImg + ">" +
                            "<div class=\"col-xs-12 panel-header\">" +
                                    "<div class=\"pull-left\">" +
                                        "<h4 class=\"line-control\"><a href=\"\">" + challengeType.content + "</a></h4>" +
                                        "<h4 class=\"line-control\"><a href=\"\">" + company.shortName + "</a></h4>" +
                                    "</div>" +
                                    "<div class=\"pull-right client-info\">" +
                                        "<span class=\"percent text-danger\">" +
                                            "<img class=\"img-circle\" style=\"width: 60px; height: 60px\" src=\"logo/242.jpg\">" +
                                        "</span>" +
                                    "</div>" +
                                "</div>" +

                                "<div class=\"panel-body \">" +
                                    "<ul class=\"list-unstyled\">" +
                                        "<li>月薪： " + Config.salary[challengeShow.challengeLevel] + "</li>" +
                                        "<li>职位诱惑：</li>" +
                                        "<li>" +
                                            "<ul class=\"companyTags\">" +
                                                "<li>" + subLable[0] + "</li>" +
                                                "<li>" + subLable[1] + "</li>" +
                                                "<li>" + subLable[2] + "</li>" +
                                            "</ul>" +
                                        "</li>" +
                                        "<li>挑战项目：</li>" +
                                        "<li>" +
                                            "<ul>" +
                                                "<li><a href=\"\">" + question1.name + "</a>" +
                                                "</li>" +
                                                "<li><a href=\"\">" + question2.name + "</a>" +
                                                "</li>" +
                                                "<li><a href=\"\">" + question3.name + "</a>" +
                                                "</li>" +
                                            "   </ul>" +
                                        "</li>" +
                                        "<li>难度：" +
                                        showLevelStar(challengeShow.challengeLevel) +
                                        "<li><i class=\"fa fa-calendar\"></i> " + challengeShow.duration + "</li>" +
                                        "<li><i class=\"fa fa-user\"></i> " + haveAcceptCount + "人已接受挑战</li>" +
                                        "<li class=\"progress-info\"><span class=\"" + ifPass + "\">" + PassStr + "</span>" +
                                        "</li>" +
                                "</ul>" +
                            "</div>" +
                            "<!-- /.panel-body -->" +
                            "<div class=\"panel-footer align-center\">" +
                                "<a href=\"coderTaskDetail.aspx?challengeId=" + Server.UrlEncode(challengeShow.id + "") + "\">" +
                                    "<button class=\"btn btn-new1\">"+startButton+"</button>" +
                                "</a>" +
                                "<a href=\"coderTask.aspx?dId=" + Server.UrlEncode(challengeShow.id + "") + "\" class=\"btn btn-new2\"/>放弃</a>" +
                            "</div>" +
                            "</div>" +
                        "</section>" +
                    "</div>";
                }
            }
        }

        protected void personalInfo_Click(object sender, EventArgs e)
        {
            String a = ((Button)sender).ToString();
        }

        private String showLevelStar(int level)
        {
            String star = "";

            for (int i = 0; i < level; i++)
            {
                star = star + "<i class=\"fa fa-star\"></i>";
            }
            return star;
        }

        private bool sqlOperation()
        {
            IBLL.IChallengeRecord ichallengeRecord = BLLFactory.BLLAccess.CreateChallengeRecord();
            String aId = Request.QueryString["aId"];
            String dId = Request.QueryString["dId"];
            //String coderEmail = Request.Cookies["userEmail"].Value;
            String coderEmail = "12301060@bjtu.edu.cn";

            if (aId != null && aId != "")
            {
                return ichallengeRecord.acceptChallenge(System.Int32.Parse(aId), coderEmail);
            }
            else if (dId != null && aId != "")
            {
                return ichallengeRecord.deleteChengeRecord(System.Int32.Parse(dId), coderEmail);
            }

            return false;
        }
    }
}