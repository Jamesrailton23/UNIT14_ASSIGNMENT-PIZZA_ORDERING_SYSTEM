<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_pizza.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.custom_order_page_pizza" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <center>
        <h1>Customise Pizza</h1>
        <h3>Customise your pizza to the way that you want it to be</h3>
        </center>
        <br />
        <h3>&nbsp; Pizza Size</h3>
            <asp:RadioButtonList ID="rbl_pizza_size" runat="server">
                            <asp:ListItem>Personal (2 Slices) (£2)</asp:ListItem>
                            <asp:ListItem>Duo (4 Slices) (£4)</asp:ListItem>
                            <asp:ListItem>13" (£8)</asp:ListItem>
                            <asp:ListItem>16" (£10)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>&nbsp;Dough Type</h3>
            <asp:RadioButtonList ID="rbl_dough_type" runat="server">
                            <asp:ListItem>Normal (£3)</asp:ListItem>
                            <asp:ListItem>Gluten Free (£3)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>&nbsp;Crust Type</h3>
            <asp:RadioButtonList ID="rbl_crust_type" runat="server">
                            <asp:ListItem>Normal Crust (£3)</asp:ListItem>
                            <asp:ListItem>Stuffed Crsut (£5)</asp:ListItem>
                            <asp:ListItem>Deep Dish (£7)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>&nbsp;Cheese Type</h3>
            <asp:RadioButtonList ID="rbl_cheese_type" runat="server">
                            <asp:ListItem>American (£3)</asp:ListItem>
                            <asp:ListItem>Chedder (£3)</asp:ListItem>
                            <asp:ListItem>Mozzarella (£3)</asp:ListItem>
                        </asp:RadioButtonList>
            
        <br />
        <asp:Button ID="btn_confirm" runat="server" Text="Confirm" OnClick="btn_confirm_Click" />
            
    &nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;</form>
</body>
</html>
