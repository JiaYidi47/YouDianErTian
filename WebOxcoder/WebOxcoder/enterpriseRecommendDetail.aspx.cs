using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseRecommendDetail : System.Web.UI.Page
    {
        IBLL.ICoder icoder;
        IBLL.IChallengeRecord ichallengeRecord;
        IBLL.IChallenge ichallenge;
        IBLL.IQuestionType iquestionType;
        IBLL.IQuestion iquestion;
        IBLL.IEnterprise ienterprise;

        Model.coder c;
        Model.challengeRecord upToDateChallengeRecord;
        Model.challenge challenge;
        Model.type challengeType;
        Model.question question1;
        Model.question question2;
        Model.question question3;
        Model.enterprise thisEnterprise;

        protected void Page_Load(object sender, EventArgs e)
        {
            string coderEmail = Request.QueryString["coderemail"];
            //String enterpriseEmail = Session["email"].ToString();
            String enterpriseEmail = "12301067@bjtu.edu.cn";

            icoder = BLLFactory.BLLAccess.CreateCoder();
            ichallengeRecord = BLLFactory.BLLAccess.CreateChallengeRecord();
            ichallenge = BLLFactory.BLLAccess.CreateChallenge();
            iquestionType = BLLFactory.BLLAccess.CreateQuestionType();
            iquestion = BLLFactory.BLLAccess.CreateQuestion();
            ienterprise = BLLFactory.BLLAccess.CreateEnterprise();

            c = icoder.getCoderByEmail(coderEmail);
            upToDateChallengeRecord = ichallengeRecord.getCoderUpToDateChallengeRecord(coderEmail);
            challenge = ichallenge.getChallengeByID(upToDateChallengeRecord.challengeId);
            challengeType = iquestionType.getChallengeType(challenge.type);
            question1 = iquestion.getQuestionByID(challenge.question1ID);
            question2 = iquestion.getQuestionByID(challenge.question2ID);
            question3 = iquestion.getQuestionByID(challenge.question3ID);
            thisEnterprise = ienterprise.getEnterpriseByEmail(enterpriseEmail);

            reportTitle.InnerHtml = c.name + "的挑战报告";

            instruction.InnerHtml = "<i class=\"fa fa-trophy\">" + "</i>最近挑战结果：" +
                                    "<span class=\"score-success\">推荐</span>" +
                                    "&nbsp;&nbsp;技术类型：" + challengeType.name;

            IList<Model.challengeRecord> challengers = ichallengeRecord.getChallengerByChallengeID(upToDateChallengeRecord.challengeId);
            int totalChallengers = challengers.Count();

            int totalTime;
            int subTime1 = (int)upToDateChallengeRecord.subTime1;
            int subTime2 = (int)upToDateChallengeRecord.subTime2;
            int subTime3 = (int)upToDateChallengeRecord.subTime3;
            int myTotalTime = subTime1 + subTime2 + subTime3;

            string subResult = upToDateChallengeRecord.subResult;
            string[] subResults = subResult.Split(new char[] { ';' });

            int shorterThan = 0;

            for (int i = 0; i < totalChallengers; i++)
            {
                totalTime = (int)challengers.ElementAt(i).subTime1 + (int)challengers.ElementAt(i).subTime2 + (int)challengers.ElementAt(i).subTime3;
                if (totalTime > myTotalTime)
                {
                    shorterThan++;
                }
            }

            float shorterThanPercent = (float)Math.Round((double)shorterThan * 100 / (double)totalChallengers);

            codeTime.InnerHtml = "<span style=\"margin-left: 20px;\">" +
                                 "共用时：" + (myTotalTime - myTotalTime % 60) / 60 + "分" + myTotalTime % 60 + "秒" +
                                 "</span> <span style=\"margin-left: 20px;\">" + "战胜了" + shorterThanPercent + "%的人" +
                                 "</span>";

            questions.InnerHtml = "<div class=\"col-md-2\">" + question1.name + "</div>" +
                                  "<div class=\"col-md-2\">" + showLevelStar((int)question1.questionLevel) + "</div>" +
                                  "<div class=\"col-md-2\">" + (subTime1 - subTime1 % 60) / 60 + "分" + subTime1 % 60 + "秒" + "</div>" +
                                  "<div class=\"col-md-2\">" + "<span class=\"label label-danger\">" + subResults[0] + "</span>" + "</div>" +
                                  "<div class=\"col-md-2\">" +
                                        "<a href=\"\">" +
                                            "<span style=\"margin-left: 0px\" class=\"label label-warning\">查看源码</span>" +
                                        "</a>" +
                                  "</div>" +
                                  "<div class=\"col-md-2\">&nbsp;</div>" +

                                  "<div class=\"col-md-2\">" + question2.name + "</div>" +
                                  "<div class=\"col-md-2\">" + showLevelStar((int)question2.questionLevel) + "</div>" +
                                  "<div class=\"col-md-2\">" + (subTime2 - subTime2 % 60) / 60 + "分" + subTime2 % 60 + "秒" + "</div>" +
                                  "<div class=\"col-md-2\">" + "<span class=\"label label-danger\">" + subResults[1] + "</span>" + "</div>" +
                                  "<div class=\"col-md-2\">" +
                                        "<a href=\"\">" +
                                            "<span style=\"margin-left: 0px\" class=\"label label-warning\">查看源码</span>" +
                                        "</a>" +
                                 "</div>" +
                                 "<div class=\"col-md-2\">&nbsp;</div>" +

                                 "<div class=\"col-md-2\">" + question3.name + "</div>" +
                                 "<div class=\"col-md-2\">" + showLevelStar((int)question3.questionLevel) + "</div>" +
                                 "<div class=\"col-md-2\">" + (subTime3 - subTime3 % 60) / 60 + "分" + subTime3 % 60 + "秒" + "</div>" +
                                 "<div class=\"col-md-2\">" + "<span class=\"label label-danger\">" + subResults[2] + "</span>" + "</div>" +
                                 "<div class=\"col-md-2\">" +
                                        "<a href=\"\">" +
                                            "<span style=\"margin-left: 0px\" class=\"label label-warning\">查看源码</span>" +
                                        "</a>" +
                                 "</div>" +
                                 "<div class=\"col-md-2\">&nbsp;</div>";

            String knowledge = "";
            if (!subResults[0].Equals("通过"))
            {
                knowledge = knowledge + "<li class=\"btn btn-alt btn-primary\" style=\"margin-right: 15px;\">" + question1.knowledge + "</li>";
            }

            if (!subResults[1].Equals("通过"))
            {
                knowledge = knowledge + "<li class=\"btn btn-alt btn-primary\" style=\"margin-right: 15px;\">" + question2.knowledge + "</li>";
            }

            if (!subResults[2].Equals("通过"))
            {
                knowledge = knowledge + "<li class=\"btn btn-alt btn-primary\" style=\"margin-right: 15px;\">" + question3.knowledge + "</li>";
            }

            toImprove.InnerHtml = "<h3><i class=\"fa fa-puzzle-piece\"></i> 欠缺的知识点技能</h3><h3></h3>" + knowledge;

            coderPrice.InnerHtml = c.price.ToString();

            float[] performance = new float[5] {(float)c.performance0,
                                                (float)c.performance1,
                                                (float)c.performance2,
                                                (float)c.performance3,
                                                (float)c.performance4};

            float[] betterPercent = icoder.getPerformanceBetterPercent(performance);

            performance1.InnerHtml = "<span class=\"pull-center label label-primary\">" + performance[0] +
                                    "</span> <span style=\"margin-left: 10px\" class=\"label label-primary\">战胜了" + betterPercent[0] +
                                    "%的人" +
                                     "</span><span class=\"help-block small\">此项为用户综合能力评分。</span>";

            performance2.InnerHtml = "<span class=\"pull-middle label label-info\">" + performance[1] +
                                    "</span><span style=\"margin-left: 10px\" class=\"label label-info\">战胜了" + betterPercent[1] +
                                    "%的人" +
                                    "</span> <span class=\"help-block small\">此项是对于用户编程速度快慢的综合评价。</span>";

            performance3.InnerHtml = "<span class=\"pull-middle label label-primary\">" + performance[2] +
                                     "</span><span style=\"margin-left: 10px\" class=\"label label-primary\">战胜了" + betterPercent[2] +
                                     "%的人" +
                                     "</span> <span class=\"help-block small\">此项是对于项目耗费时长/项目跨越长度/平均学习时长综合分析后的相关数据。</span>";

            performance4.InnerHtml = "<span class=\"pull-middle label label-warning\">" + performance[3] +
                                     "</span> <span style=\"margin-left: 10px\" class=\"label label-warning\">战胜了" + betterPercent[3] +
                                     "%的人" +
                                     "</span> <span class=\"help-block small\">此项是对于用户编程过程中的出错频率的统计分析数据。</span>";

            performance5.InnerHtml = "<span class=\"pull-center label label-success\">" + performance[4] +
                                     "</span><span style=\"margin-left: 10px\" class=\"label label-success\">战胜了" + betterPercent[4] +
                                     "%的人" +
                                     "</span> <span class=\"help-block small\">此项是用户“宅”在网站上的频繁程度。</span>";

            float[] averagePerformance = icoder.getAveragePerformance();



            performanceDiagram.InnerHtml = "<input id=\"input-speed-all\" type=\"hidden\" value=\"" + averagePerformance[0] + "\" />" +
                                           "<input id=\"input-manito-all\" type=\"hidden\" value=\"" + averagePerformance[1] + "\" />" +
                                           "<input id=\"input-error-all\" type=\"hidden\" value=\"" + averagePerformance[2] + "\" />" +
                                           "<input id=\"input-time-all\" type=\"hidden\" value=\"" + averagePerformance[3] + "\" />" +
                                           "<input id=\"input-speed\" type=\"hidden\" value=\"" + performance[1] + "\" />" +
                                           "<input id=\"input-manito\" type=\"hidden\" value=\"" + performance[2] + "\" />" +
                                           "<input id=\"input-error\" type=\"hidden\" value=\"" + performance[3] + "\" />" +
                                           "<input id=\"input-time\" type=\"hidden\" value=\"" + performance[4] + "\" />" +
                                           "<input id=\"Hidden1\" type=\"hidden\" value=\"" + performance[4] + "\" />";

            string bindingInfo = c.bindinginfo;

            if (bindingInfo[0] == '1')
            {
                string address = "http://www.weibo.com/";
                sinaWeibo.InnerHtml = "<a href=" + address + " target=\"_blank\"> <img src=\"img/sina.png\" class=\"img-responsive\"></a>" +
                                      "<p class=\"text-muted\">新浪微博</p>";
            }

            if (bindingInfo[1] == '1')
            {
                string address = "https://www.github.com/";
                git.InnerHtml = "<a href=" + address + " target=\"_blank\"> <img src=\"img/github.png\" class=\"img-responsive\"></a>" +
                                      "<p class=\"text-muted\">GitHub</p>";
            }




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

        protected void personalInfo_Click(object sender, EventArgs e)
        {
            int invite = (int)thisEnterprise.restInvite;

            int igender = (int)c.sex;
            string gender;

            if (igender == 0)
            {
                gender = "女";
            }
            else
            {
                gender = "男";
            }

            if (invite == 0)
            {
                Lemail.Text = "您的邀请次数为0,请先进行充值";
                Lage.Text = "";
                Lgender.Text = "";
                Lphone.Text = "";
            }
            else
            {
                thisEnterprise.restInvite = thisEnterprise.restInvite - 1;
                ienterprise.changeEnterpriseInfo(thisEnterprise);

                Lemail.Text = "E-mail：" + c.email;
                Lage.Text = "年龄：" + c.age;
                Lgender.Text = "电话：" + gender;
                Lphone.Text = "年龄：" + c.phone;
            }
        }

        protected void topay_Click(object sender, EventArgs e)
        {
            Response.Redirect("/enterprisePayment.aspx");
        }

    }
}