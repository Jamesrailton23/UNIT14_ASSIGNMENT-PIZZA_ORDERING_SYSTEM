using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.checkout_page
{
    public partial class checkout_customer_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Pizza_order_system_databaseEntities db = new Pizza_order_system_databaseEntities();
            var activeUsers = db.Customer_Accounts;
            var dbSession = db.Customer_Sessions;

            foreach (var user in activeUsers)
            {

                if (tb_password.Text.Trim() == user.Password && tb_username.Text.Trim() == user.Username)
                {
                    
                    Session["Username"] = user.Username;
                    Response.Redirect("~/webpages/checkout_page/checkout_page.aspx", false);
                    Session["loggedIn"] = true;  
                    
                }
            }
        }
    }
}