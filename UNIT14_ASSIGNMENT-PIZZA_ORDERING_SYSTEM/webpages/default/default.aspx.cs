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
            lb_time.Text = DateTime.Now.ToString();
        }

        protected void ibtn_start_new_order_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/webpages/new_order_page/new_order_page.aspx");
        }
    }
}