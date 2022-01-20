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
        decimal toppingCost;
        string Pinapple, Ham, BlackOlives, GreenOnions, RedOnions, Pepperoni, Mushrooms, Ancovies;

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            second_stage_custom_order();
        }

        protected void second_stage_custom_order()
        {
            switch (rbl_pineapple.SelectedIndex)
            {
                case 0:
                    toppingCost += 0.00m;
                    Pinapple = "No";
                    break;
                
                case 1:
                    toppingCost += 1.00m;
                    Pinapple = "Yes";
                    break ;
                case 2:
                    toppingCost += 3.00m;
                    Pinapple = "Yes (Extra)";
                    break;


            }

            switch (rbl_ham.SelectedIndex)
            {
                case 0:
                    toppingCost += 0.00m;
                    Ham = "No";
                    break;
                case 1:
                    toppingCost += 1.00m;
                    Ham = "Yes";
                    break;
                case 2:
                    toppingCost += 3.00m;
                    Ham = "Yes (Extra)";
                    break;
            }

            switch (rbl_black_olives.SelectedIndex)
            {
                case 0:
                    toppingCost += 0.00m;
                    BlackOlives = "No";
                    break;
                case 1:
                    toppingCost += 1.00m;
                    BlackOlives = "Yes";
                    break;
                case 2:
                    toppingCost += 3.00m;
                    BlackOlives = "Yes (Extra)";
                    break;
            }

            switch (rbl_green_onions.SelectedIndex)
            {
                case 0:
                    GreenOnions += 0.00m;
                    Ham = "No";
                    break;
                case 1:
                    toppingCost += 1.00m;
                    GreenOnions = "Yes";
                    break;
                case 2:
                    toppingCost += 3.00m;
                    GreenOnions = "Yes (Extra)";
                    break;
            }

            switch (rbl_red_onions.SelectedIndex)
            {
                case 0:
                    toppingCost += 0.00m;
                    RedOnions = "No";
                    break;
                case 1:
                    toppingCost += 1.00m;
                    RedOnions = "Yes";
                    break;
                case 2:
                    toppingCost += 3.00m;
                    RedOnions = "Yes (Extra)";
                    break;
            }

            switch (rbl_pepperoni.SelectedIndex)
            {
                case 0:
                    toppingCost += 0.00m;
                    Pepperoni = "No";
                    break;
                case 1:
                    toppingCost += 1.00m;
                    Pepperoni = "Yes";
                    break;
                case 2:
                    toppingCost += 3.00m;
                    Pepperoni = "Yes (Extra)";
                    break;
            }

            switch (rbl_mushrooms.SelectedIndex)
            {
                case 0:
                    toppingCost += 0.00m;
                    Mushrooms = "No";
                    break;
                case 1:
                    Mushrooms += 1.00m;
                    Ham = "Yes";
                    break;
                case 2:
                    toppingCost += 3.00m;
                    Mushrooms = "Yes (Extra)";
                    break;
            }

            switch (rbl_ancovies.SelectedIndex)
            {
                case 0:
                    toppingCost += 0.00m;
                    Ancovies = "No";
                    break;
                case 1:
                    toppingCost += 1.00m;
                    Ancovies = "Yes";
                    break;
                case 2:
                    toppingCost += 3.00m;
                    Ancovies = "Yes (Extra)";
                    break;
            }

            

        }
       
    }
}