using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class order_complete_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["doughType"] = "";
            Session["cheeseType"] = "";
            Session["crustType"] = "";
            Session["pizzaSize"] = "";
            Session["firstStageCost"] = 0.00;

            Session["Pinapple"] = "";
            Session["Ham"] = "";
            Session["BlackOlives"] = "";
            Session["GreenOnions"] = "";
            Session["RedOnions"] = "";
            Session["Pepproni"] = "";
            Session["Mushrooms"] = "";
            Session["Ancovies"] = "";
            Session["secondStageCost"] = 0.00;

            Session["cocaCola"] = "";
            Session["pepsi"] = "";
            Session["water"] = "";
            Session["nachoBites"] = "";
            Session["mozzarellaSicks"] = "";
            Session["thirdStageCost"] = 0.00;

            Session["LoggedIn"] = false;
            Session["Username"] = "";

        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx",false);
        }
    }
}