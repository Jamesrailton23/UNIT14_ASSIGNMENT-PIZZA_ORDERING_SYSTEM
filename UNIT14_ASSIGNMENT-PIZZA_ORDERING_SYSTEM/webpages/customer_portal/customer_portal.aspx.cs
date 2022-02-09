using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_portal
{
    public partial class customer_portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lb_customer_name.Text = (string)Session["Username"];
                Pizza_order_system_databaseEntities db = new Pizza_order_system_databaseEntities();
                var dbSession = db.Customer_Sessions;
                var newSession = new Customer_Session();
                newSession.Session_ID = Guid.NewGuid();
                newSession.Time_Of_Login = DateTime.Now;
                int accountNumber =  (int)Session["AccountIDNumber"];
                newSession.Account_ID_Number = accountNumber; 
                db.Customer_Sessions.Add(newSession);
                db.SaveChanges();
                
            }
            
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["LoggedIn"] = false;
            Session["AccountIDNumber"] = "";
            Session["Username"] = "";
            Session["LoginTime"] = "";
            Response.Redirect("~/webpages/customer_login/customer_login.aspx",false);
        }

        
    }
}