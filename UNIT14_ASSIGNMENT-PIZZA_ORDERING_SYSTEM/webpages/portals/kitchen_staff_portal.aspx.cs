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
        int id;
        bool OrderExists, CustomerExists, isNumber;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string Username = (string)Session["Username"];
                int accountNumber = (int)Session["AccountIDNumber"];
                lb_topMessage.Text = Username;

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
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["LoggedIn"] = false;
            Session["AccountIDNumber"] = "";
            Session["Username"] = "";
            Session["LoginTime"] = "";
            Response.Redirect("~/webpages/logins/employee_login_page.aspx", false);
        }

        protected void btn_refresh_Click(object sender, EventArgs e)
        {
            gv_customers.DataBind();
            gv_customers.DataBind();
        }

        protected void btn_deleteOrder_Click(object sender, EventArgs e)
        {
            Pizza_order_system_databaseEntities db = new Pizza_order_system_databaseEntities();
            var orderPresent = db.Customer_Orders;
            var customerPresent = db.Customers;
            isNumber = int.TryParse(tb_delete.Text.Trim(), out id);

            #region
            if (tb_delete.Text != "" && isNumber == true)
            {
                
                
                foreach (var Customer_Exists in customerPresent)
                {
                    if (id == Customer_Exists.CustomerID)
                    {
                        CustomerExists = true;
                    }
                }
                foreach (var Order_Exists in orderPresent)
                {
                    if (id == Order_Exists.OrderID)
                    {
                        OrderExists = true;
                    }
                }
                #endregion
                if (OrderExists == true && CustomerExists == true && tb_delete.Text != "")
                {
                    lb_message.CssClass = "alert alert-success";
                    lb_message.Text = "SUCCESS!!, Order Deleted";
                    var order = (from data in db.Customer_Orders where data.OrderID == id select data).First();
                    var customer = (from data in db.Customers where data.CustomerID == id select data).First();
                    db.Customers.Remove(customer);
                    db.Customer_Orders.Remove(order);
                    db.SaveChanges();
                    gv_customers.DataBind();
                    gv_orders.DataBind();
                }
                else
                {
                    lb_message.CssClass = "alert alert-danger";
                    lb_message.Text = "ERROR!!, This Order / Customer Number Does not Exist";
                }
            }
            else
            {
                lb_message.CssClass = "alert alert-danger";
                lb_message.Text = "ERROR!!, Please Insert Infomation into textbox";
            }
           
        }

        
    }
}