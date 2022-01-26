using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class checkout_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_checkout_Click(object sender, EventArgs e)
        {
            lb_0.Text = (string)Session["crustType"];
            lb_1.Text = (string)Session["doughType"];
            lb_2.Text = (string)Session["cheeseType"];
            decimal cost = (decimal)Session["firstCost"];
            lb_3.Text = cost.ToString();
            
        }

        
    }
}