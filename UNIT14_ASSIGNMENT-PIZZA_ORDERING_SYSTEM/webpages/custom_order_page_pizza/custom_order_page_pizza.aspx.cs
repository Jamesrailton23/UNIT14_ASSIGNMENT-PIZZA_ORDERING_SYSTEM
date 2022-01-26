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

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/webpages/custom_order_page_toppings/custom_order_page_toppings.aspx");
            first_stage_custom_order();
        }
        protected void first_stage_custom_order()
        {
            
            switch (rbl_pizza_size.SelectedIndex)
            {
                case 0: 
                        firstStageCost += 2.00m;
                        pizzaSize += "Personal (2 Slices)";
               
                    break;
                case 1: firstStageCost += 4.00m;
                         pizzaSize += "Duo (4 slices)";
                   
                    break;
                case 2:
                    firstStageCost += 8.00m;
                    pizzaSize += "13 Inch";
                  
                    break;
                case 3:
                    firstStageCost += 10.00m;
                    pizzaSize += "16 Inch";
                   
                    break;
            }
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 3.00m;
                    doughType += "Normal";
                    break;
                case 1:
                    firstStageCost += 3.00m;
                     doughType += "Gluten Free";
                    break;

            }

            switch (rbl_crust_type.SelectedIndex)
            {
                case 0:
                    firstStageCost += 3.00m;
                    crustType += "Normal";
                    break;
                case 1:
                    firstStageCost += 5.00m;
                    crustType += "Stuffed";
                    break;
                case 2:
                    firstStageCost += 7.00m;
                    crustType += "Deep Dish";
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

            Session["doughType"] = (string)doughType;
            Session["cheeseType"] = (string)cheeseType;
            Session["firstCost"] = (decimal)firstStageCost;
            Session["crustType"] = (string)crustType;


        }
         
       

        
    }
}