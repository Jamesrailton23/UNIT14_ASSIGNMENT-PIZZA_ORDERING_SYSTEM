<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_portal.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_portal.customer_portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Portal</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1 class="auto-style1">Your Portal</h1>
            <br />
            <hr />
            <br />
            <center>
                &nbsp;<asp:Button ID="btn_logout" runat="server" OnClick="btn_logout_Click" Text="Logout" Height="50px" Width="150px" CssClass="btn btn-dark" />
            </center>
            <br />
            <br />
            <h2 class="text-center">
                &nbsp; Hello!
                <asp:Label ID="lb_customer_name" runat="server"></asp:Label>
            </h2>
            <br />
            <h3 class="text-center">&nbsp;<span class="text-decoration-underline"><strong>Your Order History :</strong></span></h3>
            
            </div>
            <br />
                <asp:GridView ID="gv_order" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="sql_CustomerOrder" CssClass="table table-bordered table-dark">
                <Columns>
                    <asp:BoundField DataField="Time_Created" HeaderText="Time Created" SortExpression="Time_Created" />
                    <asp:BoundField DataField="OrderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="Pizza_From_Menu" HeaderText="Pizza From Menu" SortExpression="Pizza_From_Menu" />
                    <asp:BoundField DataField="Pizza_Size" HeaderText="Pizza Size" SortExpression="Pizza_Size" />
                    <asp:BoundField DataField="Crust_Type" HeaderText="Crust Type" SortExpression="Crust_Type" />
                    <asp:BoundField DataField="Cheese_Type" HeaderText="Cheese Type" SortExpression="Cheese_Type" />
                    <asp:BoundField DataField="Dough_Type" HeaderText="Dough Type" SortExpression="Dough_Type" />
                    <asp:BoundField DataField="Pepperoni" HeaderText="Pepperoni" SortExpression="Pepperoni" />
                    <asp:BoundField DataField="Green_Onions" HeaderText="Green Onions" SortExpression="Green_Onions" />
                    <asp:BoundField DataField="Red_Onions" HeaderText="Red Onions" SortExpression="Red_Onions" />
                    <asp:BoundField DataField="Ancovies" HeaderText="Ancovies" SortExpression="Ancovies" />
                    <asp:BoundField DataField="Mushrooms" HeaderText="Mushrooms" SortExpression="Mushrooms" />
                    <asp:BoundField DataField="Black_Olives" HeaderText="Black Olives" SortExpression="Black_Olives" />
                    <asp:BoundField DataField="Ham" HeaderText="Ham" SortExpression="Ham" />
                    <asp:BoundField DataField="Pineapple" HeaderText="Pineapple" SortExpression="Pineapple" />
                    <asp:BoundField DataField="Coca_Cola" HeaderText="Coca Cola" SortExpression="Coca_Cola" />
                    <asp:BoundField DataField="Pepsi" HeaderText="Pepsi" SortExpression="Pepsi" />
                    <asp:BoundField DataField="Water" HeaderText="Water" SortExpression="Water" />
                    <asp:BoundField DataField="Nacho_Bites" HeaderText="Nacho Bites" SortExpression="Nacho_Bites" />
                    <asp:BoundField DataField="Cookies" HeaderText="Cookies (Choclate Chip)" SortExpression="Cookies" />
                    <asp:BoundField DataField="Mozzarella_Sticks" HeaderText="Mozzarella Sticks" SortExpression="Mozzarella_Sticks" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sql_CustomerOrder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Time Created] AS Time_Created, [OrderID], [Pizza From Menu] AS Pizza_From_Menu, [Pizza Size] AS Pizza_Size, [Crust Type] AS Crust_Type, [Cheese Type] AS Cheese_Type, [Dough Type] AS Dough_Type, [Pepperoni], [Green Onions] AS Green_Onions, [Red Onions] AS Red_Onions, [Ancovies], [Mushrooms], [Black Olives] AS Black_Olives, [Ham], [Pineapple], [Coca Cola] AS Coca_Cola, [Pepsi], [Water], [Nacho Bites] AS Nacho_Bites, [Cookies], [Mozzarella Sticks] AS Mozzarella_Sticks FROM [Customer Order] WHERE ([Username] = @Username)">
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
