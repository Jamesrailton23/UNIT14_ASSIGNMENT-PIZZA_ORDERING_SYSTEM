using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.employee_portals
{
    public partial class kitchen_staff_portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Username = (string)Session["Username"];
            int accountNumber = (int)Session["AccountIDNumber"];
                 
            lb_employee_name.Text = Username;          
            
            Pizza_order_system_databaseEntities db = new Pizza_order_system_databaseEntities();
            var dbSession = db.Employee_Sessions;
            var newSession = new Employee_Session();

            newSession.Session_ID = Guid.NewGuid();
            newSession.Time_Of_Login = DateTime.Now;
            newSession.Account_ID_Number = accountNumber;
            newSession.Username = Username;
            
            db.Employee_Sessions.Add(newSession);
            db.SaveChanges();
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["LoggedIn"] = false;
            Session["AccountIDNumber"] = "";
            Session["Username"] = "";
            Session["LoginTime"] = "";
            Response.Redirect("~/webpages/employee_login_page/employee_login_page.aspx", false);
        }
    }
}