using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_create_account
{
    public partial class customer_create_account : System.Web.UI.Page
    {
        bool AccountExists, NotEmpty;

        protected void Page_Load(object sender, EventArgs e)
        {
         
           
        }
        
        protected void btn_create_account_Click(object sender, EventArgs e)
        {         
            Pizza_order_system_databaseEntities db = new Pizza_order_system_databaseEntities();
            var customerAccount = db.Customer_Accounts;
            
            // Checks if A Account Exists And If the textbox's are not empty
            foreach (var account in customerAccount)
            {
                if (tb_username.Text.Trim() == account.Username || tb_email.Text.Trim() == account.Email)
                {
                    AccountExists = true;
                    lb_message.CssClass = "alert alert-danger";
                    lb_message.Text = "AN ERROR HAS OCCURED!! A Customer Account Already Exists With These Details";
                }
                else if (tb_username.Text.Trim() != account.Username && tb_email.Text.Trim() != account.Email && tb_firstName.Text != "" && tb_lastName.Text != "" && tb_username.Text != "" && tb_password.Text != "" && tb_email.Text != "" && tb_phone.Text != "")
                {
                    AccountExists = false;
                    NotEmpty = true;
                }
                else if (tb_firstName.Text == "" && tb_lastName.Text == "" && tb_username.Text == "" && tb_password.Text == "" && tb_email.Text == "" && tb_phone.Text == "")
                {
                    NotEmpty = false;
                    lb_message.CssClass = "alert alert-danger";
                    lb_message.Text = "AN ERROR HAS OCCURED!! Insert information into all required Fields";
                }
                else
                {
                    lb_message.CssClass = "alert alert-danger";
                    lb_message.Text = "AN ERROR HAS OCCURED!!";
                }
            }

            if(AccountExists == false && NotEmpty == true)
            {               
                var customer = new Customer_Account();
                customer.First_Name = tb_firstName.Text.Trim();
                customer.Last_Name = tb_lastName.Text.Trim();
                customer.Username = tb_username.Text.Trim();
                customer.Password = tb_password.Text.Trim();
                customer.Email = tb_email.Text.Trim();
                customer.Phone_number = tb_phone.Text.Trim();
                add_new_user(customer);             

                //to take back to home page & to stop other inputs
                tb_firstName.Enabled = false;
                tb_lastName.Enabled = false;
                tb_username.Enabled = false;
                tb_password.Enabled = false;
                tb_email.Enabled = false;
                tb_phone.Enabled = false;
                tm_to_default.Enabled = true;
                lb_message.CssClass = "alert alert-success";
                lb_message.Text = "SUCESS!! Customer Account created";
            }                                       
        }
        public static void add_new_user(Customer_Account new_user)
        {
            //to add customer to DB
            var new_customer_account = new Customer_Account();
            new_customer_account.First_Name = new_user.First_Name;
            new_customer_account.Last_Name = new_user.Last_Name;
            new_customer_account.Username = new_user.Username;
            new_customer_account.Email = new_user.Email;
            new_customer_account.Password = new_user.Password;
            new_customer_account.Phone_number = new_user.Phone_number;
            Pizza_order_system_databaseEntities pizza_db = new Pizza_order_system_databaseEntities();
            var dbCustomer = pizza_db.Customer_Accounts;
            dbCustomer.Add(new_customer_account);
            pizza_db.SaveChanges();
        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx",false);
        }

        protected void tm_to_default_Tick(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx");
        }
    }
}