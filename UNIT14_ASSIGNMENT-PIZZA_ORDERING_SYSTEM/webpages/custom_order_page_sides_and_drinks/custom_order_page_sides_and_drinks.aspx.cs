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
        string cocaCola, pepsi, water, nachoBites, mozzarellaSicks, cookies;

        

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void basket()
        {
            thirdStageCost += (cb_cocaCola.Checked) ? 3.00m : 0.00m;
            thirdStageCost += (cb_pepsi.Checked) ? 3.00m : 0.00m;
            thirdStageCost += (cb_water.Checked) ? 1.00m : 0.00m;
            thirdStageCost += (cb_nachoBites.Checked) ? 5.00m : 0.00m;
            thirdStageCost += (cb_mozzarellaSticks.Checked) ? 4.50m : 0.00m;
            thirdStageCost += (cb_cookies.Checked) ? 0.99m : 0.00m;

            cocaCola = (cb_cocaCola.Checked) ? "Yes" : "";
            pepsi = (cb_pepsi.Checked) ? "Yes" : "";
            water = (cb_water.Checked) ? "Yes" : "";
            nachoBites = (cb_nachoBites.Checked) ? "Yes" : "";
            mozzarellaSicks = (cb_mozzarellaSticks.Checked) ? "Yes" : "";
            cookies = (cb_cookies.Checked) ? "Yes" : "";

            lb_cocaCola.Text = cocaCola;
            lb_pepsi.Text = pepsi;
            lb_water.Text = water;
            lb_nachoBites.Text = nachoBites;
            lb_mozzarellaSticks.Text = mozzarellaSicks;
            lb_Cookies.Text = cookies;

            lb_cost3.Text = String.Format("{0:C}",thirdStageCost);
        }
        #region
        protected void cb_water_CheckedChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void cb_cocaCola_CheckedChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void cb_cookies_CheckedChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx", false);
            Session["PresetPizza"] = "";
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
            Session["Pepperoni"] = "";
            Session["Mushrooms"] = "";
            Session["Ancovies"] = "";
            Session["secondStageCost"] = 0.00;

            Session["cocaCola"] = "";
            Session["pepsi"] = "";
            Session["water"] = "";
            Session["nachoBites"] = "";
            Session["mozzarellaSicks"] = "";
            Session["cookies"] = "";
            Session["thirdStageCost"] = 0.00;

            Session["LoggedIn"] = false;
            Session["Username"] = "";
        }

        protected void cb_nachoBites_CheckedChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void cb_mozzarellaSticks_CheckedChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void cb_pepsi_CheckedChanged(object sender, EventArgs e)
        {
            basket();
        }
        #endregion
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
            thirdStageCost += (cb_cookies.Checked) ? 0.99m : 0.00m;

            cocaCola = (cb_cocaCola.Checked) ? "Yes" : "";
            pepsi = (cb_pepsi.Checked) ? "Yes" : "";
            water = (cb_water.Checked) ? "Yes" : "";
            nachoBites = (cb_nachoBites.Checked) ? "yes" : "";
            mozzarellaSicks = (cb_mozzarellaSticks.Checked) ? "yes" : "";
            cookies = (cb_cookies.Checked) ? "Yes" : "";

            // session varibles
            Session["cocaCola"] = cocaCola;
            Session["pepsi"] = pepsi;
            Session["water"] = water;
            Session["nachoBites"] = nachoBites;
            Session["mozzarellaSicks"] = mozzarellaSicks;
            Session["cookies"] = cookies;
            Session["thirdStageCost"] = thirdStageCost;
            


        }
      
    }
}