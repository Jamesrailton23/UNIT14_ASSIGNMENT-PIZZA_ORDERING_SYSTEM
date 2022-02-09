using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.custom_order_page_sides_and_drinks
{
    public partial class custom_order_page_sides_and_drinks : System.Web.UI.Page
    {
        decimal thirdStageCost;
        string cocaCola, pepsi, water, nachoBites, mozzarellaSicks;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/checkout_page/checkout_page.aspx", false);
            sides_and_drink();
        }

        protected void sides_and_drink()
        {
            thirdStageCost += (cb_cocaCola.Checked) ? 3.00m : 0.00m;
            thirdStageCost += (cb_pepsi.Checked) ? 3.00m : 0.00m;
            thirdStageCost += (cb_water.Checked) ? 1.00m : 0.00m;
            thirdStageCost += (cb_nachoBites.Checked) ? 5.00m : 0.00m;
            thirdStageCost += (cb_mozzarellaSticks.Checked) ? 4.50m : 0.00m;

            cocaCola = (cb_cocaCola.Checked) ? "Yes" : "";
            pepsi = (cb_pepsi.Checked) ? "Yes" : "";
            water = (cb_water.Checked) ? "Yes" : "";
            nachoBites = (cb_nachoBites.Checked) ? "yes" : "";
            mozzarellaSicks = (cb_mozzarellaSticks.Checked) ? "yes" : "";

            // session varibles
            Session["cocaCola"] = (string)cocaCola;
            Session["pepsi"] =(string)pepsi;
            Session["water"] = (string)water;
            Session["nachoBites"] = (string)nachoBites;
            Session["mozzarellaSicks"] = (string)mozzarellaSicks;
            Session["thirdStageCost"] = (decimal)thirdStageCost;


        }
      
    }
}