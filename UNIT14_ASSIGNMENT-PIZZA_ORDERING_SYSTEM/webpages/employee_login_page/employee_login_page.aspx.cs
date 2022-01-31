using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.employee_login_page
{
    public partial class employee_login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Pizza_order_system_databaseEntities db = new Pizza_order_system_databaseEntities();
            var kitchenStaff = db.Kitchen_Staff_Accounts;
            var managers = db.Manager_Accounts;

            foreach (var manager in managers)
            {
                if(tb_username.Text.Trim() == manager.Username && tb_password.Text.Trim() == manager.Password)
                {
                    Session["LoggedIn"] = "YES";
                    Session["AccountIDNumber"] = manager.Account_ID_Number;
                    Session["Username"] = manager.Username;
                    Session["AcessLevel"] = "Manager";
                }
            }
            foreach (var kitchen_Staff in kitchenStaff)
            {
                if (tb_username.Text.Trim() == kitchen_Staff.Username && tb_password.Text.Trim() == kitchen_Staff.Password)
                {
                    Session["LoggedIn"] = "YES";
                    Session["AccountIDNumber"] = kitchen_Staff.Account_ID_Number;
                    Session["Username"] = kitchen_Staff.Username;
                    Session["AcessLevel"] = "Kitchen Staff";
                }
            }


        }
    }
}