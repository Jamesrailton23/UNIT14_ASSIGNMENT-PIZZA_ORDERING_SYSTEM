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
            var dbSession = db.Sessions;

            


            foreach(var user in activeUsers)
            {
               
                if(tb_password.Text.Trim() == user.Password && tb_username.Text.Trim() == user.Username)
                {
                    Session["LoggedIn"] = "YES";
                    Session["AccountIDNumber"] = user.Account_ID_Number;
                    Session["Username"] = user.Username;
                    Session["AcessLevel"] = "Customer";
                    Response.Redirect("~/webpages/customer_portal/customer_portal.aspx",false);
                    /*
                    var newSession = new Session();
                    newSession.Account_ID_Number = user.Account_ID_Number;
                    newSession.TimeOfLogin = DateTime.Now;
                    newSession.Access_Level = "Customer";
                    dbSession.Add(newSession);
                    */
                    
                }
            }

        }
    }
}