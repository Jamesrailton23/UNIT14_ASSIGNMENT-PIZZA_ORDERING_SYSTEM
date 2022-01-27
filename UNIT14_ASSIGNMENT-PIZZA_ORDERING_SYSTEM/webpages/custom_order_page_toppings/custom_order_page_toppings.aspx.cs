using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class custom_order_page_toppings : System.Web.UI.Page
    {
        decimal secondStageCost;
        string Pinapple, Ham, BlackOlives, GreenOnions, RedOnions, Pepperoni, Mushrooms, Ancovies; 

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            second_stage_custom_order();
            Response.Redirect("~/webpages/custom_order_page_sides_and_drinks/custom_order_page_sides_and_drinks.aspx", false);
           
        }

        protected void second_stage_custom_order()
        {
            #region
            switch (rbl_pineapple.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    Pinapple = "None";
                    break;
                
                case 1:
                    secondStageCost += 1.00m;
                    Pinapple = "Normal";
                    break ;
                case 2:
                    secondStageCost += 3.00m;
                    Pinapple = "Extra";
                    break;


            }

            switch (rbl_ham.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    Ham = "None";
                    break;
                case 1:
                    secondStageCost += 1.00m;
                    Ham = "Normal";
                    break;

                case 2:
                    secondStageCost += 3.00m;
                    Ham = "Extra";
                    break;
            }

            switch (rbl_black_olives.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    BlackOlives = "None";
                    break;
                case 1:
                    secondStageCost += 1.00m;
                    BlackOlives = "Normal";
                    break;
                case 2:
                    secondStageCost += 3.00m;
                    BlackOlives = "Extra";
                    break;
            }

            switch (rbl_green_onions.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    GreenOnions = "None";
                    break;
                case 1:
                    secondStageCost += 1.00m;
                    GreenOnions = "Normal";
                    break;
                case 2:
                    secondStageCost += 3.00m;
                    GreenOnions = "Extra";
                    break;
            }

            switch (rbl_red_onions.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    RedOnions = "None";
                    break;
                case 1:
                    secondStageCost += 1.00m;
                    RedOnions = "Normal";
                    break;
                case 2:
                    secondStageCost += 3.00m;
                    RedOnions = "Extra";
                    break;
            }

            switch (rbl_pepperoni.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    Pepperoni = "None";
                    break;
                case 1:
                    secondStageCost += 1.00m;
                    Pepperoni = "Normal";
                    break;
                case 2:
                    secondStageCost += 3.00m;
                    Pepperoni = "Extra";
                    break;
            }

            switch (rbl_mushrooms.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    Mushrooms = "None";
                    break;
                case 1:
                    Mushrooms += 1.00m;
                    Mushrooms = "Normal";
                    break;
                case 2:
                    secondStageCost += 3.00m;
                    Mushrooms = "Extra";
                    break;
            }

            switch (rbl_ancovies.SelectedIndex)
            {
                case 0:
                    secondStageCost += 0.00m;
                    Ancovies = "None";
                    break;
                case 1:
                    secondStageCost += 1.00m;
                    Ancovies = "Normal";
                    break;
                case 2:
                    secondStageCost += 3.00m;
                    Ancovies = "Extra";
                    break;
            }
            #endregion 
           
            //session varibles
            Session["Pinapple"] = (string)Pepperoni;
            Session["Ham"] = (string)Ham;
            Session["BlackOlives"] = (string)BlackOlives;
            Session["GreenOnions"] = (string)GreenOnions;
            Session["RedOnions"] = (string)RedOnions;
            Session["Pepproni"] = (string)Pepperoni;
            Session["Mushrooms"] = (string)Mushrooms;
            Session["Ancovies"] = (string)Ancovies;
            Session["secondStageCost"] = (decimal)secondStageCost;
            

        }

        

    }
}