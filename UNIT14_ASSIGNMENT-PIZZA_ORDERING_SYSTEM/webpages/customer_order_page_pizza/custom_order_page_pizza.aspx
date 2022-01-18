<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_pizza.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.custom_order_page_pizza" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <h1>&nbsp;Customise Pizza</h1>
            <br />
            <br />
            <h3>&nbsp;&nbsp;Pizza Size</h3>&nbsp;
            <asp:RadioButtonList ID="rbl_pizza_size" runat="server">
                <asp:ListItem Value="Personal (2 Slices) (£2)">Personal (2 Slices) (£2)</asp:ListItem>
                <asp:ListItem Value="Duo (4 Sclices) (£4)">Duo (4 Sclices) (£4)</asp:ListItem>
                <asp:ListItem Value="13&quot; (£13)">13&quot; (£13)</asp:ListItem>
                <asp:ListItem Value="16&quot; (£16)">16&quot; (£16)</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <hr />
            <br />
            <h3>&nbsp;&nbsp;Cheese Type</h3> &nbsp
            <asp:RadioButtonList ID="rbl_cheese_type" runat="server">
                <asp:ListItem>American</asp:ListItem>
                <asp:ListItem Value="Mozzarella (+ £3)">Mozzarella (+ £3)</asp:ListItem>
                <asp:ListItem Value="Chedder (+ £3)">Chedder (+ £3)</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <hr />
            <br />
            <h3>&nbsp;&nbsp;Dough Type</h3>
            <br />
            <asp:RadioButtonList ID="rbl_dough_type" runat="server">
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Gluten Free</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <hr />
            <br />
            <h3>&nbsp;&nbsp;Crust Type</h3>
            <br />
            <asp:RadioButtonList ID="rbl_crust_type" runat="server">
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem Value="Stuffed Crust (+ £5)">Stuffed Crust (+ £5)</asp:ListItem>
                <asp:ListItem Value="Deep Dish (+ £7)">Deep Dish (+ £7)</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="Confirm" />
&nbsp;<br />
        
        </div>
    </form>
</body>
</html>
