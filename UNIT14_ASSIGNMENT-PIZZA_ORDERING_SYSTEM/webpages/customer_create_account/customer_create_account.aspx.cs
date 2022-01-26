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
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        
        public static void add_new_user(Customer_Account new_user)
        {
            //to add customer to DB
            var new_customer_account = new Customer_Account();
            new_customer_account.Username = new_user.Username;
            new_customer_account.Email = new_user.Email;
            new_customer_account.Password = new_user.Password;
            new_customer_account.Phone_number = new_user.Phone_number;
            Pizza_order_system_databaseEntities pizza_db = new Pizza_order_system_databaseEntities();
            var dbCustomer = pizza_db.Customer_Accounts;
            dbCustomer.Add(new_customer_account);
            pizza_db.SaveChanges();

        }

        protected void btn_create_account_Click(object sender, EventArgs e)
        {
            
            //to add customer to DB using textbox
            var customer = new Customer_Account();
            customer.Account_ID_Number = 0;
            customer.Username = tb_username.Text;
            customer.Password = tb_password.Text;
            customer.Email = tb_email.Text;
            customer.Phone_number = tb_phone.Text;
            add_new_user(customer);

            //to take back to home page & to stop other inputs
            tb_email.Enabled = false;
            tb_password.Enabled = false;
            tb_phone.Enabled = false;
            tb_username.Enabled = false;
            tm_to_default.Enabled = true;


        }

        protected void tm_to_default_Tick(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx");
        }
    }
}