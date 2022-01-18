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
        string PizzaSize, DoughType, CrustType, CheeseType;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
           

        }

        protected string pizza_size()
        {
            switch (rbl_pizza_size.SelectedIndex)
            {
                case 0: PizzaSize = "Personal (2 Slices)";
                    break;
                case 1: PizzaSize = "Duo (4 Slices)";
                    break;
                case 2: PizzaSize = "13 Inch";
                    break;
                case 3: PizzaSize = "16 Inch";
                    break;

            }
            return PizzaSize;
        }

        protected string cheese_type()
        {
            switch (rbl_cheese_type.SelectedIndex)
            {
                case 0: CheeseType = "American";
                    break;
                case 1: CheeseType = "Mozzarella";
                    break;
                case 2: CheeseType = "Chedder";
                    break;
            }
            return CheeseType;
        }

        protected string dough_type()
        {
            switch (rbl_dough_type.SelectedIndex)
            {
                case 0: DoughType = "Normal";
                    break ;
                case 1: DoughType = "Gluten Free";
                    break;
            }
            return DoughType;
        }

        protected string crust_type()
        {
            switch(rbl_crust_type.SelectedIndex)
            {
                case 0: CrustType = "Normal";
                    break;
                case 1: CrustType = "Stuffed Crust";
                    break;
                case 2: CrustType = "Deep Dish";
                    break;
            }
            return CrustType;
        }

    }
}