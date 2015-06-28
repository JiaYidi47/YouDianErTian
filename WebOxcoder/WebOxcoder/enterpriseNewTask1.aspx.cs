using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseNewTask1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void nextStep_ServerClick(object sender, EventArgs e)
        {
            int tec = Int32.Parse(challengeType.Text);
            int level = Int32.Parse(challengeLevel.Text);
            string url = "/enterpriseNewTask2.aspx?tec=" + tec + "&level=" + level;
            Response.Redirect(url);

        }
    }
}