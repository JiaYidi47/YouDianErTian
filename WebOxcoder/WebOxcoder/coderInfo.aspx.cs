using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class coderInfo : System.Web.UI.Page
    {
        IBLL.ICoder icoder;
        Model.coder c;

        protected void Page_Load(object sender, EventArgs e)
        {
            String coderEmail = "12301060@bjtu.edu.cn";
            icoder = BLLFactory.BLLAccess.CreateCoder();
            c = icoder.getCoderByEmail(coderEmail);

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

            price.InnerHtml = "￥" + c.price;
            level.InnerHtml = "Lv." + (int)c.performance0;

            string bindingInfo = c.bindinginfo;

            if (bindingInfo[0] == '1')
            {
                string address = "https://api.weibo.com/oauth2/authorize?client_id=3064453059&response_type=code&forcelogin=true&redirect_uri=http://www.oxcoder.com/auth-sina.action";
                sinaWeibo.InnerHtml = "<a href=\"#\" id=\"sina\" title=\"新浪微博\" class=\"img-show\"> <img src=\"img/sina.png\">" +
                                      "</a>" +
                                      "<div class=\"img-hide\">" +
                                      "<a target=\"_blank\" href=\"" + address + "\">绑定</a>" +
                                      "</div>" +
                                      "<p class=\"text-muted\">微博</p>";

            }

            if (bindingInfo[1] == '1')
            {
                string address = "https://github.com/login/oauth/authorize?client_id=cb26d4b4731db53e8a90&redirect_uri=http://www.oxcoder.com/auth-github.action";
                git.InnerHtml = "<a href=\"#\" id=\"github\" title=\"github\" class=\"img-show\"><img src=\"img/github.png\">" +
                                 "</a>" +
                                 "<div class=\"img-hide\">" +
                                 "<a href=\"" + address + "\" target=\"_blank\">绑定</a>" +
                                 "</div>" +
                                 "<p class=\"text-muted text-center\">Github</p>";
            }

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

            string url = "coderInfoChange.aspx?name=" + c.name + "&age=" + c.age + "&gender=" + gender + "&phone=" + c.phone;
            personalInfo.InnerHtml = "<span style=\"padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;\" >基本资料</span>" +
                                     "<h3>" + c.name + "</h3>" +
                                     "<p>" +
                                     "<span class=\"resume-label\">性别：" + gender + "</span>" +
                                     "</p>" +
                                     "<p>" +
                                     "<span class=\"resume-label\">年龄：" + c.age + "</span>" +
                                     "</p>" +
                                     "<p>" +
                                     "<span class=\"resume-label\">手机：" + c.phone + "</span>" +
                                     "</p>" +
                                     "<p>" +
                                     "<span class=\"resume-label\">邮箱：" + c.email + "</span>" +
                                     "</p>" +
                                     "<p class=\"pull-right\">" +
                                           "<a href=\"" + url + "\" class=\"resume-action\">编辑</a>" +
                                     "</p>";
        }
    }
}