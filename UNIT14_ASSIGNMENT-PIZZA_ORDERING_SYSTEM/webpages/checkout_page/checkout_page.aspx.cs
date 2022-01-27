using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class checkout_page : System.Web.UI.Page
    {
        decimal costStage1, costStage2, costStage3, finalCost;
        string  pizzaSize, cheeseType, doughType, crustType, Pinapple, Ham, BlackOlives, GreenOnions, RedOnions, Pepperoni, Mushrooms, Ancovies, cocaCola, pepsi, water, nachoBites, mozzarellaSicks;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_checkout_Click(object sender, EventArgs e)
        {
            if (cb_confirm.Checked && tb_firstName != null && tb_lastName != null && tb_line1 != null && tb_line2 != null && tb_phone != null && tb_postCode != null)
            {
                add_new_customer();
                add_new_order();
            }
            else
            {

            }

        }

        public static void customer_order(Customer_Order new_order)
        {
            var order = new Customer_Order();
            
            //Stage1
            order.Pizza_Size = new_order.Pizza_Size;
            order.Crust_Type = new_order.Crust_Type;
            order.Cheese_Type = new_order.Cheese_Type;
            order.Dough_Type = new_order.Dough_Type;
            
            //Stage2
            order.Pineapple = new_order.Pineapple;
            order.Ham = new_order.Ham;
            order.Black_Olives = new_order.Black_Olives;
            order.Green_Onions = new_order.Green_Onions;
            order.Red_Onions = new_order.Red_Onions;
            order.Pepperroni = new_order.Pepperroni;
            order.Mushrooms = new_order.Mushrooms;
            order.Ancovies = new_order.Ancovies;

            //Stage3
            order.Coca_Cola = new_order.Coca_Cola;
            order.Pepsi = new_order.Pepsi;
            order.Water = new_order.Water;
            order.Nacho_Bites = new_order.Nacho_Bites;
            order.Mozzarella_Sticks = new_order.Mozzarella_Sticks;

            //Username
            order.Username = new_order.Username;

            //Sql
            Pizza_order_system_databaseEntities order_pizzaDB = new Pizza_order_system_databaseEntities();
            var dbCustomerOrder = order_pizzaDB.Customer_Orders;
            dbCustomerOrder.Add(order);
            order_pizzaDB.SaveChanges();
           
            
        }
        public void add_new_order()
        {

            var add_order = new Customer_Order();

            //stage1
            pizzaSize = (string)Session["pizzaSize"];
            cheeseType = (string)Session["cheeseType"];
            crustType = (string)Session["crustType"];
            doughType = (string)Session["doughType"];
            //__________________________________________
            add_order.Pizza_Size = pizzaSize;
            add_order.Cheese_Type = cheeseType;
            add_order.Crust_Type = crustType;
            add_order.Dough_Type = doughType;

            //Stage2
            Pinapple = (string)Session["Pinapple"];
            Ham = (string)Session["Ham"];
            BlackOlives = (string)Session["BlackOlives"];
            GreenOnions = (string)Session["GreenOnions"];
            RedOnions = (string)Session["RedOnions"];
            Pepperoni = (string)Session["Pepproni"];
            Mushrooms = (string)Session["Mushrooms"];
            Ancovies = (string)Session["Ancovies"];
            //______________________________________________
            add_order.Pineapple = Pinapple;
            add_order.Ham = Ham;
            add_order.Black_Olives = BlackOlives;
            add_order.Green_Onions = GreenOnions;
            add_order.Red_Onions = RedOnions;
            add_order.Pepperroni = Pepperoni;
            add_order.Mushrooms = Mushrooms;
            add_order.Ancovies = Ancovies;

            //Stage3
            cocaCola = (string)Session["cocaCola"];
            pepsi = (string)Session["pepsi"];
            water = (string)Session["water"];
            nachoBites = (string)Session["nachoBites"];
            mozzarellaSicks = (string)Session["mozzarellaSicks"];
            //_____________________________________________________
            add_order.Coca_Cola = cocaCola;
            add_order.Pepsi = pepsi;
            add_order.Water = water;
            add_order.Nacho_Bites = nachoBites;
            add_order.Mozzarella_Sticks = mozzarellaSicks;

            //Username
            add_order.Username = tb_account_username.Text.Trim();

            customer_order(add_order);

        }

        public static void customer(Customer new_customer)
        {
            var customer = new Customer();
            //cost and collection method
            customer.Total_order_cost = new_customer.Total_order_cost;
            customer.Collection_method = new_customer.Collection_method;
            
            //customer details
            customer.First_Name = new_customer.First_Name;
            customer.Last_Name = new_customer.Last_Name;
            customer.Address_Line_1 = new_customer.Address_Line_1;
            customer.Address_Line_2 = new_customer.Address_Line_2;
            customer.Address_Line_3 = new_customer.Address_Line_3;
            customer.Post_code = new_customer.Post_code;
            customer.Email = new_customer.Email;
            
            //Sql
            Pizza_order_system_databaseEntities customer_pizzaDB = new Pizza_order_system_databaseEntities();
            var dbCustomers = customer_pizzaDB.Customers;
            dbCustomers.Add(customer);
            customer_pizzaDB.SaveChanges();
               
            
        }
        public void add_new_customer()
        {
            var add_customer = new Customer();

            add_customer.First_Name = tb_firstName.Text.Trim();
            add_customer.Last_Name = tb_lastName.Text.Trim();
            add_customer.Address_Line_1 = tb_line1.Text.Trim();
            add_customer.Address_Line_2 = tb_line2.Text.Trim();
            add_customer.Address_Line_3 = tb_line3.Text.Trim();
            add_customer.Post_code = tb_postCode.Text.Trim();
            add_customer.Email = tb_email.Text.Trim();
            
            switch (rbl_collection_method.SelectedIndex)
            {
                case 0: add_customer.Collection_method = "Collection";
                    break;
                case 1: add_customer.Collection_method = "Delivery";
                    break;
            }
           
            //Order Cost
            costStage1 = (decimal)Session["firstStageCost"];
            costStage2 = (decimal)Session["secondStageCost"];
            costStage3 = (decimal)Session["thirdStageCost"];
            finalCost = costStage1 + costStage2 + costStage3;
            add_customer.Total_order_cost = finalCost;

            customer(add_customer);
        }
       
       
    }
}