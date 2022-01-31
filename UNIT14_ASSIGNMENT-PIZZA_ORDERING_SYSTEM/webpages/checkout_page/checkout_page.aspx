<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.checkout_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Basket And Checkout</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

       
        <br />
        <br />
        <h1>&nbsp; Basket &amp; Checkout</h1>
        <hr />
        <br />
       
        <h3 >&nbsp; Your basket :</h3>
        <br />
        &nbsp; Pizza Size -<br />
        <br />
&nbsp;Crust Type -
        <br />
        <br />
&nbsp;Dough Type -<br />
        <br />
&nbsp;Toppings -
        <br />
        <br />
&nbsp;Sides and Drinks -
        <br />
        &nbsp;<br />
        <br />
        &nbsp;Stage 1 Cost =<br />
&nbsp;Stage 2 Cost =<br />
&nbsp;Stage 3 Cost =<br />
        <br />
&nbsp;Vat =<br />
        <br /><h3>
&nbsp;TOTAL COST =
        </h3><hr />
        <br />
        <br />
        <h3>&nbsp; Customer Account Username (Enter Username to save order to your Account)</h3>
        &nbsp;
        <asp:TextBox ID="tb_account_username" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <h3>&nbsp; Collection Method</h3>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButtonList ID="rbl_collection_method" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True">Collect</asp:ListItem>
            <asp:ListItem>Delivery (+ £3.00)</asp:ListItem>
        </asp:RadioButtonList>
            </h3>
        <br />
        <br />
        <h3>&nbsp; First Name * -
            <asp:TextBox ID="tb_firstName" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Last Name * - <asp:TextBox ID="tb_lastName" runat="server"></asp:TextBox>
        </h3>
        <br />
        <h3>&nbsp; Address Line 1 * - <asp:TextBox ID="tb_line1" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Address Line 2 * - <asp:TextBox ID="tb_line2" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Address Line 3 (Optional) - <asp:TextBox ID="tb_line3" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Post Code * - <asp:TextBox ID="tb_postCode" runat="server"></asp:TextBox>
        </h3>
        <br />
        <h3>&nbsp; Phone Number * - <asp:TextBox ID="tb_phone" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Email * -
            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
        </h3>
        <br />
        <hr />
        <br />
        <br />
        <h3>&nbsp;I Confirm That My Order And Information Is Correct&nbsp; -&nbsp; <asp:CheckBox ID="cb_confirm" runat="server" Text="Confirm" />
        </h3>
        <p>&nbsp;</p>
        &nbsp;
        <asp:Button ID="btn_checkout" runat="server" Text="Checkout" OnClick="btn_checkout_Click" />
        <br />

       
    </form>
</body>
</html>
