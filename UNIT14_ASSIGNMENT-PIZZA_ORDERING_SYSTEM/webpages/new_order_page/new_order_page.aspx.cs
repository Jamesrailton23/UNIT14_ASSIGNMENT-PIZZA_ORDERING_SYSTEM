using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    public partial class new_order_page : System.Web.UI.Page
    {
        decimal firstStageCost, secondStageCost;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Pepperoni
        }

        protected void ibtn_custom_pizza_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/webpages/custom_order_page_pizza/custom_order_page_pizza.aspx",false);
        }
        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx");
        }
       

       

        protected void ibtn_pizza_Hawaiian_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/webpages/custom_order_page_sides_and_drinks/custom_order_page_sides_and_drinks.aspx", false);
            Session["PresetPizza"] = "Hawiian";
            //first Stage
            firstStageCost = 16.20m;
            Session["doughType"] = "Normal";
            Session["cheeseType"] = "Mozzarella";
            Session["crustType"] = "Normal";
            Session["pizzaSize"] = "10 Inch";
            Session["firstStageCost"] = (decimal)firstStageCost;

            //SecondStage
            secondStageCost = 2.50m;
            Session["Pinapple"] = "Normal";
            Session["Ham"] = "Normal";
            Session["BlackOlives"] = "";
            Session["GreenOnions"] = "";
            Session["RedOnions"] = "";
            Session["Pepperoni"] = "";
            Session["Mushrooms"] = "Normal";
            Session["Ancovies"] = "";
            Session["secondStageCost"] = (decimal)secondStageCost;
        }

        protected void ibtn_pizza_Ham_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/webpages/custom_order_page_sides_and_drinks/custom_order_page_sides_and_drinks.aspx", false);
            Session["PresetPizza"] = "Ham And Mushroom";
            //first Stage
            firstStageCost = 16.06m;
            Session["doughType"] = "Normal";
            Session["cheeseType"] = "Mozzarella";
            Session["crustType"] = "Normal";
            Session["pizzaSize"] = "10 Inch";
            Session["firstStageCost"] = (decimal)firstStageCost;

            //SecondStage
            secondStageCost = 1.50m;
            Session["Pinapple"] = "";
            Session["Ham"] = "Extra";
            Session["BlackOlives"] = "";
            Session["GreenOnions"] = "";
            Session["RedOnions"] = "";
            Session["Pepperoni"] = "";
            Session["Mushrooms"] = "Normal";
            Session["Ancovies"] = "";
            Session["secondStageCost"] = (decimal)secondStageCost;
        }

        protected void ibtn_pizza_Pepperoni_Click(object sender, ImageClickEventArgs e)
        {
                Response.Redirect("~/webpages/custom_order_page_sides_and_drinks/custom_order_page_sides_and_drinks.aspx", false);
                Session["PresetPizza"] = "Pepperoni";
                //first Stage
                firstStageCost = 17.76m;
                Session["doughType"] = "Normal";
                Session["cheeseType"] = "Mozzarella";
                Session["crustType"] = "Normal";
                Session["pizzaSize"] = "10 Inch";
                Session["firstStageCost"] = (decimal)firstStageCost;


                //SecondStage
                secondStageCost = 1.50m;
                Session["Pinapple"] = "";
                Session["Ham"] = "Normal";
                Session["BlackOlives"] = "";
                Session["GreenOnions"] = "";
                Session["RedOnions"] = "";
                Session["Pepperoni"] = "Normal";
                Session["Mushrooms"] = "";
                Session["Ancovies"] = "";
                Session["secondStageCost"] = (decimal)secondStageCost;
        }

        protected void ibtn_pizza_Margherita_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/webpages/custom_order_page_sides_and_drinks/custom_order_page_sides_and_drinks.aspx", false);
            Session["PresetPizza"] = "Margherita";
            //first Stage
            firstStageCost = 15.56m;
            Session["doughType"] = "Normal";
            Session["cheeseType"] = "Mozzarella";
            Session["crustType"] = "Normal";
            Session["pizzaSize"] = "10 Inch";
            Session["firstStageCost"] = (decimal)firstStageCost;

            //SecondStage
            secondStageCost = 0.75m;
            Session["Pinapple"] = "";
            Session["Ham"] = "";
            Session["BlackOlives"] = "";
            Session["GreenOnions"] = "";
            Session["RedOnions"] = "";
            Session["Pepperoni"] = "";
            Session["Mushrooms"] = "";
            Session["Ancovies"] = "";
            Session["secondStageCost"] = (decimal)secondStageCost;
        }

       
    }
}