using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.employee_portals
{
    public partial class manager_portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb_employee_name.Text = (string)Session["Username"];
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["LoggedIn"] = false;
            Session["AccountIDNumber"] = "";
            Session["Username"] = "";
            Response.Redirect("~/webpages/employee_login_page/employee_login_page.aspx", false);
        }

        protected void btn_createAccount_Click(object sender, EventArgs e)
        {
            var staff = new Kitchen_Staff_Account();
            staff.Username = tb_username.Text.Trim();
            staff.Password = tb_password.Text.Trim();
            staff.Phone_Number = tb_phone.Text.Trim();
            staff.Email = tb_email.Text.Trim();
            add_new_user(staff);
        }
        public static void add_new_user(Kitchen_Staff_Account newUser)
        {
            var newKitchenStaffAccount = new Kitchen_Staff_Account();
            newKitchenStaffAccount.Username = newUser.Username;
            newKitchenStaffAccount.Password = newUser.Password;
            newKitchenStaffAccount.Phone_Number = newUser.Phone_Number;
            newKitchenStaffAccount.Email = newUser.Email;
            Pizza_order_system_databaseEntities pizza_db = new Pizza_order_system_databaseEntities();
            var dbCustomer = pizza_db.Kitchen_Staff_Accounts;
            dbCustomer.Add(newKitchenStaffAccount);
            pizza_db.SaveChanges();

        }
    }
}