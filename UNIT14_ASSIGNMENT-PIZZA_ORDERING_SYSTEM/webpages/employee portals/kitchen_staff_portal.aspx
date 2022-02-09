<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kitchen_staff_portal.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.employee_portals.kitchen_staff_portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kitchen Staff Portal</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_logout" runat="server" OnClick="btn_logout_Click" Text="LOGOUT" />
            <br />
            <h3>&nbsp; Hello
                <asp:Label ID="lb_employee_name" runat="server"></asp:Label>
            </h3>
            <br />
            <h2>Current Orders</h2>
                <asp:GridView ID="gv_orders" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="sql_orders">
                    <Columns>
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                        <asp:BoundField DataField="Pizza_From_Menu" HeaderText="Pizza_From_Menu" SortExpression="Pizza_From_Menu" />
                        <asp:BoundField DataField="Crust_Type" HeaderText="Crust_Type" SortExpression="Crust_Type" />
                        <asp:BoundField DataField="Pizza_Size" HeaderText="Pizza_Size" SortExpression="Pizza_Size" />
                        <asp:BoundField DataField="Cheese_Type" HeaderText="Cheese_Type" SortExpression="Cheese_Type" />
                        <asp:BoundField DataField="Dough_Type" HeaderText="Dough_Type" SortExpression="Dough_Type" />
                        <asp:BoundField DataField="Pepperroni" HeaderText="Pepperroni" SortExpression="Pepperroni" />
                        <asp:BoundField DataField="Green_Onions" HeaderText="Green_Onions" SortExpression="Green_Onions" />
                        <asp:BoundField DataField="Red_Onions" HeaderText="Red_Onions" SortExpression="Red_Onions" />
                        <asp:BoundField DataField="Ancovies" HeaderText="Ancovies" SortExpression="Ancovies" />
                        <asp:BoundField DataField="Mushrooms" HeaderText="Mushrooms" SortExpression="Mushrooms" />
                        <asp:BoundField DataField="Black_Olives" HeaderText="Black_Olives" SortExpression="Black_Olives" />
                        <asp:BoundField DataField="Ham" HeaderText="Ham" SortExpression="Ham" />
                        <asp:BoundField DataField="Pineapple" HeaderText="Pineapple" SortExpression="Pineapple" />
                        <asp:BoundField DataField="Pepsi" HeaderText="Pepsi" SortExpression="Pepsi" />
                        <asp:BoundField DataField="Coca_Cola" HeaderText="Coca_Cola" SortExpression="Coca_Cola" />
                        <asp:BoundField DataField="Water" HeaderText="Water" SortExpression="Water" />
                        <asp:BoundField DataField="Nacho_Bites" HeaderText="Nacho_Bites" SortExpression="Nacho_Bites" />
                        <asp:BoundField DataField="Mozzarella_Sticks" HeaderText="Mozzarella_Sticks" SortExpression="Mozzarella_Sticks" />
                        <asp:BoundField DataField="Time_Created" HeaderText="Time_Created" SortExpression="Time_Created" />
                    </Columns>
                </asp:GridView>
              
              <asp:SqlDataSource ID="sql_orders" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CustomerID], [OrderID], [Pizza From Menu] AS Pizza_From_Menu, [Pizza Size] AS Pizza_Size, [Crust Type] AS Crust_Type, [Cheese Type] AS Cheese_Type, [Dough Type] AS Dough_Type, [Pepperroni], [Green Onions] AS Green_Onions, [Red Onions] AS Red_Onions, [Ancovies], [Mushrooms], [Black Olives] AS Black_Olives, [Ham], [Pineapple], [Coca Cola] AS Coca_Cola, [Pepsi], [Water], [Nacho Bites] AS Nacho_Bites, [Mozzarella Sticks] AS Mozzarella_Sticks, [Time Created] AS Time_Created FROM [Customer Order]"></asp:SqlDataSource>
              
              
              <br />
              <h2>Customers</h2>
              
                  <asp:GridView ID="gv_customers" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="sql_customers">
                      <Columns>
                          <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                          <asp:BoundField DataField="Total order cost" HeaderText="Total order cost" SortExpression="Total order cost" />
                          <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                          <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                          <asp:BoundField DataField="Address Line 1" HeaderText="Address Line 1" SortExpression="Address Line 1" />
                          <asp:BoundField DataField="Address Line 2" HeaderText="Address Line 2" SortExpression="Address Line 2" />
                          <asp:BoundField DataField="Address Line 3" HeaderText="Address Line 3" SortExpression="Address Line 3" />
                          <asp:BoundField DataField="Post code" HeaderText="Post code" SortExpression="Post code" />
                          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                      </Columns>
                  </asp:GridView>
              
              
              <asp:SqlDataSource ID="sql_customers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
              <br />
              <br />
&nbsp;
             
              
        </div>
    </form>
</body>
</html>
