using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class custom_order_page_pizza : System.Web.UI.Page
    {
        
        string pizzaSize, cheeseType, crustType, doughType;
        decimal firstStageCost;

        protected void Page_Load(object sender, EventArgs e)
        {
            lb_size.Text = "Personal (2 Slices)";
            lb_crust.Text = "Normal";
            lb_dough.Text = "Normal";
            lb_cheese.Text = "American";
            lb_cost1.Text = String.Format("{0:C}",6.20m);
        }
        #region
        protected void rbl_pizza_size_SelectedIndexChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void rbl_dough_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void rbl_crust_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            basket();
        }

        protected void btn_continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/custom_order_page_toppings/custom_order_page_toppings.aspx", false);
            first_stage_custom_order();
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

        protected void rbl_cheese_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            basket();
        }
        #endregion

        
        protected void basket()
        {         
            switch (rbl_pizza_size.SelectedIndex)
            {
                case 0:
                    firstStageCost += 1.00m;
                    lb_size.Text = "Personal (2 Slices)";
                    break;

                case 1:
                    firstStageCost += 2.00m;
                    lb_size.Text = "Duo (4 slices)";
                    break;

                case 2:
                    firstStageCost += 5.50m;                    
                    lb_size.Text = "10 Inch";
                    break;

                case 3:
                    firstStageCost += 7.75m;
                    lb_size.Text = "13 Inch";
                    break;

            }
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 2.10m;
                    lb_dough.Text = "Normal";
                    break;

                case 1:
                    firstStageCost += 2.20m;
                    lb_dough.Text = "Gluten Free";
                    break;

            }

            switch (rbl_crust_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 2.10m;
                    lb_crust.Text = "Normal";
                    break;

                case 1:
                    firstStageCost += 3.55m;;
                    lb_crust.Text = "Stuffed";
                    break;

                case 2:
                    firstStageCost += 4.47m;
                    lb_crust.Text = "Deep Dish";
                    break;

            }

            switch (rbl_cheese_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 1.00m;
                    lb_cheese.Text = "American";
                    break;

                case 1:
                    firstStageCost += 1.00m;
                    lb_cheese.Text = "Chedder";
                    break;

                case 2:
                    firstStageCost += 1.35m;
                    lb_cheese.Text = "Mozzarella";
                    break;

            }
            lb_cost1.Text = String.Format("{0:C}",firstStageCost);
        }

        protected void first_stage_custom_order()
        {
            switch (rbl_pizza_size.SelectedIndex)
            {
                case 0: 
                        firstStageCost += 1.00m;
                        pizzaSize = "Personal (2 Slices)";                       
                        break;
                    
                case 1: 
                        firstStageCost += 2.00m;
                        pizzaSize = "Duo (4 slices)";
                        break;
                    
                case 2:
                        firstStageCost += 5.50m;
                        pizzaSize = "10 Inch";
                        break;

                case 3:
                        firstStageCost += 7.75m;
                        pizzaSize = "13 Inch";
                        break;

            }
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0:
                        firstStageCost += 2.10m;
                        doughType = "Normal";
                        break;

                case 1:
                        firstStageCost += 2.20m;
                        doughType = "Gluten Free";
                        break;

            }

            switch (rbl_crust_type.SelectedIndex)
            {
                case 0:
                        firstStageCost += 2.10m;
                        crustType = "Normal";
                        break;

                case 1:
                        firstStageCost += 3.55m;
                        crustType = "Stuffed";
                        break;

                case 2:
                        firstStageCost += 4.47m;
                        crustType = "Deep Dish";
                        break;

            }

            switch (rbl_cheese_type.SelectedIndex)
            {
                case 0:
                        firstStageCost += 1.00m;
                        cheeseType = "American";                   
                        break;

                case 1:
                        firstStageCost += 1.00m;
                        cheeseType = "Chedder";
                        break;

                case 2:
                        firstStageCost += 1.35m;
                        cheeseType = "Mozzarella";
                        break;
               
            }
            //session varibles
            Session["pizzaSize"] = pizzaSize;
            Session["doughType"] = doughType;
            Session["crustType"] = crustType;
            Session["cheeseType"] = cheeseType;
            Session["firstStageCost"] = firstStageCost;

        }
         
       

        
    }
}