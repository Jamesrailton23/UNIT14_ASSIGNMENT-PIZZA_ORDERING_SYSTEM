using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
           
        }
        void Session_Start(object sender, EventArgs e)
        {
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
            Session["AccountIDNumber"] = "";
            Session["LoginTime"] = "";



        }
    }
}