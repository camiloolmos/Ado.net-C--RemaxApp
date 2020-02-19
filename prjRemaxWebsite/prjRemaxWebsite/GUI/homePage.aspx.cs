using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjRemaxWebsite.GUI
{
    public partial class homePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearchAgent_Click(object sender, EventArgs e)
        {
            Response.Redirect("agentPage.aspx");
        }

        protected void btnSearchHouse_Click(object sender, EventArgs e)
        {
            Response.Redirect("housePage.aspx");
        }

        protected void btnContactAgent_Click(object sender, EventArgs e)
        {
            Response.Redirect("messaginPage.aspx");
        }

        protected void btnSearchHouse2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("housePage.aspx");
        }
    }
}