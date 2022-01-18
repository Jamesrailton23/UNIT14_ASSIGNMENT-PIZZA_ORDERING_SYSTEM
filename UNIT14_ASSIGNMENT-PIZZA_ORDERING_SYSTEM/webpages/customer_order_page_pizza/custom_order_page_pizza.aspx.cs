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
         decimal firstStageCost, pizzaCost, crustCost, cheeseCost, doughCost;
         string pizzaSize, cheeseType, crustType, doughType;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void btn_confirm_Click(object sender, EventArgs e)
        {
            firstStageCost = pizzaCost + doughCost;

            Label1.Text = cost_calculcation().ToString();

          





        }
        public decimal cost_calculcation()
        {
            
            switch (rbl_pizza_size.SelectedIndex)
            {
                case 0: pizzaCost = 2.00m;
               
                    break;
                case 1: pizzaCost = 4.00m;
                   
                    break;
                case 2: pizzaCost = 8.00m;
                  
                    break;
                case 3: pizzaCost = 10.00m;
                   
                    break;
            }
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0:
                    doughCost = 3.00m;
                    break;
                case 1:
                    doughCost = 3.00m;
                    break;

            }

            switch (rbl_crust_type.SelectedIndex)
            {
                case 0:
                    crustCost = 3.00m;
                    break;
                case 1:
                    crustCost = 5.00m;
                    break;
                case 2:
                    crustCost = 7.00m;
                    break;

            }

            switch (rbl_cheese_type.SelectedIndex)
            {
                case 0:
                    cheeseCost = 2.00m;
                    break;
                case 1:
                   cheeseCost= 4.00m;
                    break;
                case 2:
                   cheeseCost = 8.00m;
                    break;
                case 3:
                    cheeseCost = 10.00m;
                    break;
            }

            firstStageCost = cheeseCost + crustCost + doughCost + pizzaCost;
            return firstStageCost;


        }
         public void customer_order()
         {

            switch (rbl_pizza_size.SelectedIndex)
            {
                case 0:
                    pizzaSize = "Personal (2 Slices)";

                    break;
                case 1:
                    pizzaSize = "Duo (4 slices)";

                    break;
                case 2:
                    pizzaSize = "13 Inch";

                    break;
                case 3:
                    pizzaSize = "16 Inch";

                    break;
            }
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0:
                    doughType = "Normal";
                    break;
                case 1:
                    doughType = "Gluten Free";
                    break;

            }
            switch (rbl_crust_type.SelectedIndex)
            {
                case 0:
                    crustType = "Normal";
                    break;
                case 1:
                    crustType = "Stuffed";
                    break;
                case 2:
                    crustType = "Deep Dish";
                    break;

            }
            switch (rbl_cheese_type.SelectedIndex)
            {
                case 0:
                    cheeseType = "American";
                    break;
                case 1:
                    cheeseType = "Chedder";
                    break;
                case 2:
                    cheeseType = "Mozzarella";
                    break;
            }

            

        }
       

        
    }
}