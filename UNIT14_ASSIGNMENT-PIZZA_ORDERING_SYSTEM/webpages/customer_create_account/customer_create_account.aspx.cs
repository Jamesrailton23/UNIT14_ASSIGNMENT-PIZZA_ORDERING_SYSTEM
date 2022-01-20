using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_create_account
{
    public partial class customer_create_account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_create_account_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/customer_create_account/account_confirm.aspx");
        }
    }
}