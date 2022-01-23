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
        decimal sidesAndDrinksCost;
        string cocaCola, pepsi, water, nacoBites, mozzarellaSicks;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/checkout_page/checkout_page.aspx");
            sides_and_drink();
        }
        protected void sides_and_drink()
        {
            sidesAndDrinksCost += (cb_cocaCola.Checked) ? 3.00m : 0.00m;
            sidesAndDrinksCost += (cb_pepsi.Checked) ? 3.00m : 0.00m;
            sidesAndDrinksCost += (cb_water.Checked) ? 1.00m : 0.00m;
            sidesAndDrinksCost += (cb_nachoBites.Checked) ? 5.00m : 0.00m;
            sidesAndDrinksCost += (cb_mozzarellaSticks.Checked) ? 4.50m : 0.00m;

            cocaCola = (cb_cocaCola.Checked) ? "Yes" : "No";
            pepsi = (cb_pepsi.Checked) ? "Yes" : "No";
            water = (cb_water.Checked) ? "Yes" : "No";
            nacoBites = (cb_nachoBites.Checked) ? "yes" : "no";
            mozzarellaSicks = (cb_mozzarellaSticks.Checked) ? "yes" : "no";

        }

    }
}