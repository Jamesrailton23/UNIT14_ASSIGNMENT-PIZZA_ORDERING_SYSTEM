using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_portal
{
    public partial class customer_portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb_customer_name.Text = (string)Session["Username"];
            
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["LoggedInCustomer"] = "NO";
            Session["Account-ID-Number"] = "";
            Session["Username"] = "";
            Response.Redirect("~/webpages/customer_login/customer_login.aspx",false);

            




        }
    }
}