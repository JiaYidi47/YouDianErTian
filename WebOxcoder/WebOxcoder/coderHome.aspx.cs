using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class coderHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["userEmail"] == null)
            {
                Response.Redirect("/signin.aspx");
            }
            LabelName.Text = Request.Cookies["userEmail"].Value;
        }
    }
}