using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_create_account
{
    public partial class account_confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void tm_thankYou_Tick(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx");
        }
    }
}