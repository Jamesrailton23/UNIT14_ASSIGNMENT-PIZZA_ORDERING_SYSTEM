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
        decimal costStage1, costStage2, costStage3, finalCost, vat;
        string pizzaSize, cheeseType, doughType, crustType, Pinapple, Ham, BlackOlives, GreenOnions, RedOnions, Pepperoni, Mushrooms, Ancovies, cocaCola, pepsi, water, nachoBites, mozzarellaSicks, cookies, PresetPizza, Username;
        bool LoggedIn;

      
        protected void Page_Load(object sender, EventArgs e)
        {
            #region
            //varibles
            pizzaSize = (string)Session["pizzaSize"];
            cheeseType = (string)Session["cheeseType"];
            crustType = (string)Session["crustType"];
            doughType = (string)Session["doughType"];
            Pinapple = (string)Session["Pinapple"];
            Ham = (string)Session["Ham"];
            BlackOlives = (string)Session["BlackOlives"];
            GreenOnions = (string)Session["GreenOnions"];
            RedOnions = (string)Session["RedOnions"];
            Pepperoni = (string)Session["Pepperoni"];
            Mushrooms = (string)Session["Mushrooms"];
            Ancovies = (string)Session["Ancovies"];
            cocaCola = (string)Session["cocaCola"];
            pepsi = (string)Session["pepsi"];
            water = (string)Session["water"];
            nachoBites = (string)Session["nachoBites"];
            mozzarellaSicks = (string)Session["mozzarellaSicks"];
            cookies = (string)Session["cookies"];

            PresetPizza = (string)Session["PresetPizza"];
            costStage1 = (decimal)Session["firstStageCost"];
            costStage2 = (decimal)Session["secondStageCost"];
            costStage3 = (decimal)Session["thirdStageCost"];
            
            
            finalCost = costStage1 + costStage2 + costStage3;

            //first
            lb_size.Text = pizzaSize;
            lb_cheese.Text = cheeseType;
            lb_crust.Text = crustType;
            lb_dough.Text = doughType;


            //second
            lb_ancovies.Text = Ancovies;
            lb_blackOlives.Text = BlackOlives;
            lb_greenOnions.Text = GreenOnions;
            lb_ham.Text = Ham;
            lb_mushrooms.Text = Mushrooms;
            lb_redOnions.Text = RedOnions;
            lb_pineapple.Text = Pinapple;
            lb_pepperoni.Text = Pepperoni;


            //third
            lb_pepsi.Text = pepsi;
            lb_cocaCola.Text = cocaCola;
            lb_water.Text = water;
            lb_mozzarellaSticks.Text = mozzarellaSicks;
            lb_nachoBites.Text = nachoBites;
            lb_cookies.Text = cookies;
           

            //final cost
            lb_cost1.Text = String.Format("{0:C}", costStage1);
            lb_cost2.Text = String.Format("{0:C}", costStage2);
            lb_cost3.Text = String.Format("{0:C}", costStage3);
            vat = (finalCost * 25) / 100;
            lb_vat.Text = String.Format("{0:C}", vat);
            lb_total.Text = String.Format("{0:C}", finalCost);
            #endregion

            LoggedIn = (bool)Session["loggedIn"];
            Username = (string)Session["Username"];
            if(LoggedIn == true)
            {
                btn_login.Enabled = false;
                lb_signin.CssClass = "alert alert-success";
                lb_signin.Text = String.Format("SIGN IN SUCESSFULL!!, HELLO {0}", Username);
            }
        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx", false);
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
            Session["thirdStageCost"] = 0.00;

            Session["LoggedIn"] = false;
            Session["Username"] = "";
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/checkout_page/checkout_customer_login.aspx", false);
        }
        protected void btn_checkout_Click(object sender, EventArgs e)
        {
            if (cb_confirm.Checked && tb_firstName.Text != "" && tb_lastName.Text != "" && tb_line1.Text != "" && tb_line2.Text != "" && tb_phone.Text != "" && tb_postCode.Text != "")
            {
                add_new_customer();
                add_new_order();
                Response.Redirect("~/webpages/order_complete_page/order_complete_page.aspx", false);
            }
            else
            {
                lb_errorMessage.Text = "alert alert-danger";
                lb_errorMessage.Text = "ERROR!!, Please fill in all required fields";
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
            order.Pepperoni = new_order.Pepperoni;
            order.Mushrooms = new_order.Mushrooms;
            order.Ancovies = new_order.Ancovies;

            //Stage3
            order.Coca_Cola = new_order.Coca_Cola;
            order.Pepsi = new_order.Pepsi;
            order.Water = new_order.Water;
            order.Nacho_Bites = new_order.Nacho_Bites;
            order.Mozzarella_Sticks = new_order.Mozzarella_Sticks;
            order.Cookies = new_order.Cookies;

            //Other
            order.Username = new_order.Username;
            order.Pizza_From_Menu = new_order.Pizza_From_Menu;
            order.Time_Created = new_order.Time_Created;

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
            //_____________________________________________________________
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
            Pepperoni = (string)Session["Pepperoni"];
            Mushrooms = (string)Session["Mushrooms"];
            Ancovies = (string)Session["Ancovies"];
            //_____________________________________________________________
            add_order.Pineapple = Pinapple;
            add_order.Ham = Ham;
            add_order.Black_Olives = BlackOlives;
            add_order.Green_Onions = GreenOnions;
            add_order.Red_Onions = RedOnions;
            add_order.Pepperoni = Pepperoni;
            add_order.Mushrooms = Mushrooms;
            add_order.Ancovies = Ancovies;

            //Stage3
            cocaCola = (string)Session["cocaCola"];
            pepsi = (string)Session["pepsi"];
            water = (string)Session["water"];
            nachoBites = (string)Session["nachoBites"];
            mozzarellaSicks = (string)Session["mozzarellaSicks"];
            cookies = (string)Session["cookies"];
            //_____________________________________________________________
            add_order.Coca_Cola = cocaCola;
            add_order.Pepsi = pepsi;
            add_order.Water = water;
            add_order.Nacho_Bites = nachoBites;
            add_order.Mozzarella_Sticks = mozzarellaSicks;
            add_order.Cookies = cookies;

            //Other
            add_order.Username = (string)Session["username"];
            add_order.Time_Created = DateTime.Now;
            PresetPizza = (string)Session["PresetPizza"];
            add_order.Pizza_From_Menu = PresetPizza;

            customer_order(add_order);

        }

        public static void customer(Customer new_customer)
        {
            var customer = new Customer();
            //cost
            customer.Total_order_cost = new_customer.Total_order_cost;
            
            
            //customer details
            customer.First_Name = new_customer.First_Name;
            customer.Last_Name = new_customer.Last_Name;
            customer.Address_Line_1 = new_customer.Address_Line_1;
            customer.Address_Line_2 = new_customer.Address_Line_2;
            customer.Address_Line_3 = new_customer.Address_Line_3;
            customer.Post_code = new_customer.Post_code;
            customer.Email = new_customer.Email;
            customer.Phone_Number = new_customer.Phone_Number;
            
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
            add_customer.Phone_Number = tb_phone.Text.Trim();
            
           
           
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