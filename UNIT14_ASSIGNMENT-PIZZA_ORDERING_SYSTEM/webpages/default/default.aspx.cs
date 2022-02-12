using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["loggedIn"] = false;
            Session["AccountIDNumber"] = "";
            Session["Username"] = "";
        }

        protected void ibtn_start_new_order_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/webpages/new_order_page/new_order_page.aspx");
        }

        protected void btn_create_account_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/customer_create_account/customer_create_account.aspx");
        }

        protected void btn_customer_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/customer_login/customer_login.aspx");
        }

        protected void btn_employee_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/employee_login_page/employee_login_page.aspx");
        }
    }
}