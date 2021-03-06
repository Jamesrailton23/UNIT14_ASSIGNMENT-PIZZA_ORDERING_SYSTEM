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
            Session["loggedIn"] = false;
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
                    Response.Redirect("~/webpages/portals/customer_portal.aspx",false);
                }
                else
                {               
                    lb_errorMessage.Text = "ERROR!!, Incorrect Username Or Password";
                    lb_errorMessage.CssClass = "alert alert-danger";
                }
            }

        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webpages/default/default.aspx",false);
            Session["loggedIn"] = false;
            Session["Username"] = "";
        }
    }
}