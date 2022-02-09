using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_login
{
    public partial class customer_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Pizza_order_system_databaseEntities db = new Pizza_order_system_databaseEntities();
            var activeUsers = db.Customer_Accounts;
            var dbSession = db.Customer_Sessions;

            foreach(var user in activeUsers)
            {
               
                if(tb_password.Text.Trim() == user.Password && tb_username.Text.Trim() == user.Username)
                {
                    Session["LoggedIn"] = true;
                    Session["AccountIDNumber"] = user.Account_ID_Number;
                    Session["Username"] = user.Username;
                    Session["LoginTime"] = DateTime.Now;
                    Response.Redirect("~/webpages/customer_portal/customer_portal.aspx",false);
                }
            }

        }
    }
}