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
            <h1>Customise Sides and Drinks</h1>
            <h3>Select your sides and drinks here</h3>
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
            <br />
            <br />
            <asp:Button ID="btn_confirm" runat="server" Text="confirm" OnClick="btn_confirm_Click" />
            

        &nbsp;<br />
        </div>
    </form>
</body>
</html>
