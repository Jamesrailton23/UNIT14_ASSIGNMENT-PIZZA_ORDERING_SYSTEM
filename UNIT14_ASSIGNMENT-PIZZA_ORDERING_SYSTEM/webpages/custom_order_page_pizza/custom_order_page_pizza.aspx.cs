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
        decimal firstStageCost;
        string pizzaSize, cheeseType, crustType, doughType;

        protected void Page_Load(object sender, EventArgs e)
        {
            
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

        protected void rbl_cheese_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            basket();
        }
        #endregion

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/custom_order_page_toppings/custom_order_page_toppings.aspx", false);
            first_stage_custom_order();
        }
        protected void basket()
        {
            switch (rbl_pizza_size.SelectedIndex)
            {
                case 0:
                    firstStageCost += 2.50m;
                    lb_size.Text = "Personal (2 Slices)";
                    break;

                case 1:
                    firstStageCost += 4.50m;
                    lb_size.Text = "Duo (4 slices)";
                    break;

                case 2:
                    firstStageCost += 8.50m;                    
                    lb_size.Text = "10 Inch";
                    break;

                case 3:
                    firstStageCost += 10.75m;
                    lb_size.Text = "13 Inch";
                    break;

            }
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 3.10m;
                    lb_dough.Text = "Normal";
                    break;

                case 1:
                    firstStageCost += 3.20m;
                    lb_dough.Text = "Gluten Free";
                    break;

            }

            switch (rbl_crust_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 3.50m;
                    lb_crust.Text = "Normal";
                    break;

                case 1:
                    firstStageCost += 5.55m;;
                    lb_crust.Text = "Stuffed";
                    break;

                case 2:
                    firstStageCost += 7.47m;
                    lb_crust.Text = "Deep Dish";
                    break;

            }

            switch (rbl_cheese_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 3.00m;
                    lb_cheese.Text = "American";
                    break;

                case 1:
                    firstStageCost += 3.00m;
                    lb_cheese.Text = "Chedder";
                    break;

                case 2:
                    firstStageCost += 3.00m;
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
                        firstStageCost += 2.50m;
                        pizzaSize = "Personal (2 Slices)";                       
                        break;
                    
                case 1: 
                        firstStageCost += 4.50m;
                         pizzaSize = "Duo (4 slices)";
                         break;
                    
                case 2:
                        firstStageCost += 8.50m;
                        pizzaSize = "10 Inch";
                        break;

                case 3:
                        firstStageCost += 10.75m;
                        pizzaSize = "13 Inch";
                        break;

            }
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0:
                        firstStageCost += 3.10m;
                        doughType = "Normal";
                        break;

                case 1:
                        firstStageCost += 3.20m;
                        doughType = "Gluten Free";
                        break;

            }

            switch (rbl_crust_type.SelectedIndex)
            {
                case 0:
                      firstStageCost += 3.50m;
                      crustType = "Normal";
                      break;

                case 1:
                      firstStageCost += 5.55m;
                      crustType = "Stuffed";
                      break;

                case 2:
                      firstStageCost += 7.47m;
                      crustType = "Deep Dish";
                      break;

            }

            switch (rbl_cheese_type.SelectedIndex)
            {
                case 0:
                      firstStageCost += 3.00m;
                      cheeseType = "American";                   
                      break;

                case 1:
                      firstStageCost += 3.00m;
                      cheeseType = "Chedder";
                      break;

                case 2:
                      firstStageCost += 3.00m;
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