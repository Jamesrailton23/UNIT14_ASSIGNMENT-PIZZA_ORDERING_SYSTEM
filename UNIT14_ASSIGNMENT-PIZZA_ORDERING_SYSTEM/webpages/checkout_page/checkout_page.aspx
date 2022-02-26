<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.checkout_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Basket And Checkout</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            font-weight: 700;
        }
        .auto-style1 {
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">      
        <br />
        <br />
        <h1 class="text-center">&nbsp; Basket &amp; Checkout</h1>
        <p class="text-center">Checkout For Your Order Here</p>
        <p class="text-center">
            <asp:Button ID="btn_home" runat="server" Height="50px" OnClick="btn_home_Click" Text="Return Home" Width="150px" CssClass="btn btn-outline-dark" />
        </p>
        <hr />
        <br />
       
        <h2 >&nbsp; <span class="text-decoration-underline">Your basket :</span></h2>
        <br />
        <h3>&nbsp; <span class="text-decoration-underline">Stage 1 (Pizza) :</span></h3>
            &nbsp; Pizza Size -
            <asp:Label ID="lb_size" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Cheese Type -
            <asp:Label ID="lb_cheese" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Crust Type -
            <asp:Label ID="lb_crust" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Dough Type -
            <asp:Label ID="lb_dough" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <h3>&nbsp; <span class="text-decoration-underline">Stage 2 (Toppings) :</span></h3>
            &nbsp; Ham -
            <asp:Label ID="lb_ham" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Pineapple -
            <asp:Label ID="lb_pineapple" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Black Olives -
            <asp:Label ID="lb_blackOlives" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Green Onions -
            <asp:Label ID="lb_greenOnions" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Red Onions -
            <asp:Label ID="lb_redOnions" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Pepperoni -
            <asp:Label ID="lb_pepperoni" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Mushrooms -
            <asp:Label ID="lb_mushrooms" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Ancovies -
            <asp:Label ID="lb_ancovies" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <h3>&nbsp; <span class="text-decoration-underline">Stage 3 (Sides and Drinks) :</span></h3>
            &nbsp;Coca Cola -
            <asp:Label ID="lb_cocaCola" runat="server"></asp:Label>
        <br />
        <br />
        
            &nbsp;Pepsi -
            <asp:Label ID="lb_pepsi" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Water -
            <asp:Label ID="lb_water" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Nacho Bites -
            <asp:Label ID="lb_nachoBites" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Mozzarella Sticks -
            <asp:Label ID="lb_mozzarellaSticks" runat="server"></asp:Label> 
        <br />
        <br />
            &nbsp;Cookies (Chocalate Chip) -
            <asp:Label ID="lb_cookies" runat="server"></asp:Label>
        <br />
        <br />
        <h3>&nbsp; <span class="text-decoration-underline">Cost Breakdown :</span></h3>
            &nbsp;Stage 1 (Pizza) Cost =
            <asp:Label ID="lb_cost1" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Stage 2 (Toppings) Cost =
            <asp:Label ID="lb_cost2" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;Stage 3 (Sides And Drinks) Cost =
            <asp:Label ID="lb_cost3" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <span class="auto-style1">
            <em>&nbsp;Vat =
                <asp:Label ID="lb_vat" runat="server"></asp:Label>
            </em>
        </span>
        <br />
        <br />
        <h3>
            &nbsp;TOTAL COST =
            <asp:Label ID="lb_total" runat="server"></asp:Label>
        </h3>
        <hr />
        <br />
        <div class="text-center">
        <h3>&nbsp; <strong>Customer Account login </strong></h3>
        <p><strong>(Sign into your account to save your order)</strong></p>
            <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="Login" CssClass="btn btn-dark" Height="50px" Width="150px" />
        <br />
        <br />
        <asp:Label ID="lb_signin" runat="server"></asp:Label>
        </div>
        <br />
        <hr />
        <br />
        <h3><strong>&nbsp; </strong><span class="text-decoration-underline">Enter Your Name</span></h3>
        <br />
        <h3>
            &nbsp; First Name * -
            <asp:TextBox ID="tb_firstName" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
        </h3>
        <h3>
            &nbsp; Last Name * - <asp:TextBox ID="tb_lastName" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
        </h3>
        <br />
        <br />
        <h3>
            &nbsp; <span class="text-decoration-underline">Enter Your Address</span>
        </h3>
        <br />
        <h3>
            &nbsp; Address Line 1 * - <asp:TextBox ID="tb_line1" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
        </h3>
        <h3>
            &nbsp; Address Line 2 * - <asp:TextBox ID="tb_line2" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
        </h3>
        <h3>
            &nbsp; Address Line 3 (Optional) - <asp:TextBox ID="tb_line3" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
        </h3>
        <h3>
            &nbsp; Post Code * - <asp:TextBox ID="tb_postCode" runat="server" MaxLength="50"></asp:TextBox>
        </h3>
        <br />
        <br />
        <h3>
            &nbsp;<span class="text-decoration-underline">Enter Your Phone Number And Email</span></h3>
        <br />
        <h3>
            &nbsp; Phone Number * - <asp:TextBox ID="tb_phone" runat="server" MaxLength="50" CssClass="form-control-sm"></asp:TextBox>
        </h3>
        <h3>
            &nbsp; Email * -
            <asp:TextBox ID="tb_email" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
        </h3>
        <br />
        <hr />
        <br />
        <br />
        <h3 
            class="text-center">&nbsp;I Confirm That My Order And Information Is Correct&nbsp; -&nbsp; <asp:CheckBox ID="cb_confirm" runat="server" Text="Confirm" />
        </h3>
        <h3 class="text-center">
            <asp:Label ID="lb_errorMessage" runat="server" CssClass="alert-danger" Font-Bold="True"></asp:Label>
        </h3>
        &nbsp;
        <center>
            <asp:Button ID="btn_checkout" runat="server" Text="Checkout" OnClick="btn_checkout_Click" Height="50px" Width="150px" CssClass="btn btn-secondary btn-lg btn-block" />
        </center>
        <br />
        <br />      
    </form>
</body>
</html>
