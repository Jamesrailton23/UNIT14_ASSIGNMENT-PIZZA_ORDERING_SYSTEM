<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_sides_and_drinks.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.custom_order_page_sides_and_drinks.custom_order_page_sides_and_drinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customise Sides and Drinks</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="t">Customise Sides and Drinks</h1>
            <h3 id="">Select your sides and drinks here</h3>
            <br />
            <h3>&nbsp; Pepsi
                <asp:CheckBox ID="cb_pepsi" runat="server" />
            </h3>
                        <h3>&nbsp; Water
                            <asp:CheckBox ID="cb_water" runat="server" />
            </h3>
             <h3>&nbsp; Coca Cola
                 <asp:CheckBox ID="cb_cocaCola" runat="server" />
            </h3>
            <h3>&nbsp; Nacho bites
                 <asp:CheckBox ID="cb_nachoBites" runat="server" />
            </h3>
            <h3>&nbsp; Mozzarella Sticks
                 <asp:CheckBox ID="cb_mozzarellaSticks" runat="server" />
            </h3>
            <br />
            <hr />
            <br />
            <br />
            <h3>&nbsp; Your Basket:</h3>
            <br />
            &nbsp;Pepsi -
            <asp:Label ID="lb_pepsi" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;Water -
            <asp:Label ID="lb_water" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;Coca Cola -
            <asp:Label ID="lb_cocaCola" runat="server"></asp:Label>
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
&nbsp;Stage 3 Cost =
            <asp:Label ID="lb_cost3" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <center>
            <asp:Button ID="btn_continue" runat="server" Text="continue" OnClick="btn_continue_Click" Height="50px" Width="150px" />
            </center>

        &nbsp;<br />
        </div>
    </form>
</body>
</html>
