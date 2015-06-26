using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminQuestionInquire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Show();
            }
        }
        private void Show()
        {
            IBLL.IQuestion question = BLLFactory.BLLAccess.CreateQuestion();
            IList<Model.question> qu = question.getQuestionAll();
            questionInformationGridView.DataSource = qu;
            questionInformationGridView.DataBind();
        }
    }
}