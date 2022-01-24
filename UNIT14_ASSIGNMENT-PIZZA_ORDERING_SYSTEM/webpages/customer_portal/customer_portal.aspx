<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_portal.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_portal.customer_portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h3>&nbsp; Hello
                <asp:Label ID="lb_customer_name" runat="server"></asp:Label>
            </h3>
            <br />
            <h3>&nbsp; Your Order History</h3>
            
        </div>
        &nbsp;&nbsp;&nbsp;
        <asp:GridView ID="gv_order_history_pizza" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_pizza">
            <Columns>
                <asp:BoundField DataField="Pizza_Size" HeaderText="Pizza_Size" SortExpression="Pizza_Size" />
                <asp:BoundField DataField="Crust_Type" HeaderText="Crust_Type" SortExpression="Crust_Type" />
                <asp:BoundField DataField="Cheese_Type" HeaderText="Cheese_Type" SortExpression="Cheese_Type" />
                <asp:BoundField DataField="Dough_Type" HeaderText="Dough_Type" SortExpression="Dough_Type" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="gv_order_history_toppings" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_topping">
            <Columns>
                <asp:BoundField DataField="Pepperroni" HeaderText="Pepperroni" SortExpression="Pepperroni" />
                <asp:BoundField DataField="Green_Onions" HeaderText="Green_Onions" SortExpression="Green_Onions" />
                <asp:BoundField DataField="Red_Onions" HeaderText="Red_Onions" SortExpression="Red_Onions" />
                <asp:BoundField DataField="Mushrooms" HeaderText="Mushrooms" SortExpression="Mushrooms" />
                <asp:BoundField DataField="Ancovies" HeaderText="Ancovies" SortExpression="Ancovies" />
                <asp:BoundField DataField="Black_Olives" HeaderText="Black_Olives" SortExpression="Black_Olives" />
                <asp:BoundField DataField="Ham" HeaderText="Ham" SortExpression="Ham" />
                <asp:BoundField DataField="Pineapple" HeaderText="Pineapple" SortExpression="Pineapple" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="gv_order_history_sides" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_sides">
            <Columns>
                <asp:BoundField DataField="Coca_Cola" HeaderText="Coca_Cola" SortExpression="Coca_Cola" />
                <asp:BoundField DataField="Pepsi" HeaderText="Pepsi" SortExpression="Pepsi" />
                <asp:BoundField DataField="Water" HeaderText="Water" SortExpression="Water" />
                <asp:BoundField DataField="Nacho_Bites" HeaderText="Nacho_Bites" SortExpression="Nacho_Bites" />
                <asp:BoundField DataField="Mozzarella_Sticks" HeaderText="Mozzarella_Sticks" SortExpression="Mozzarella_Sticks" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_pizza" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pizza Size] AS Pizza_Size, [Crust Type] AS Crust_Type, [Cheese Type] AS Cheese_Type, [Dough Type] AS Dough_Type FROM [Customer Order]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource_topping" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pepperroni], [Green Onions] AS Green_Onions, [Red Onions] AS Red_Onions, [Mushrooms], [Ancovies], [Black Olives] AS Black_Olives, [Ham], [Pineapple] FROM [Customer Order]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource_sides" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Coca Cola] AS Coca_Cola, [Pepsi], [Water], [Nacho Bites] AS Nacho_Bites, [Mozzarella Sticks] AS Mozzarella_Sticks FROM [Customer Order]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
