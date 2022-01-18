using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class new_order_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibtn_custom_pizza_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/webpages/customer_order_page_pizza/custom_order_page_pizza.aspx");
        }
    }
}