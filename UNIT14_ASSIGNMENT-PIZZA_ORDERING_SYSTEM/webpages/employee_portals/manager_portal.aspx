﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager_portal.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.employee_portals.manager_portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager Portal</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_logout" runat="server" OnClick="btn_logout_Click" Text="LOGOUT" />
            &nbsp;<h1 class="text-center">Your Portal</h1>
            <hr />
            <h3>&nbsp; Hello
                <asp:Label ID="lb_employee_name" runat="server"></asp:Label>
            </h3>
            <br />
            <h2>Current Orders</h2>
                <asp:GridView ID="gv_orders" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="sql_orders" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Pizza_From_Menu" HeaderText="Pizza_From_Menu" SortExpression="Pizza_From_Menu" />
                        <asp:BoundField DataField="Pizza_Size" HeaderText="Pizza_Size" SortExpression="Pizza_Size" />
                        <asp:BoundField DataField="Crust_Type" HeaderText="Crust_Type" SortExpression="Crust_Type" />
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
                        <asp:BoundField DataField="Coca_Cola" HeaderText="Coca_Cola" SortExpression="Coca_Cola" />
                        <asp:BoundField DataField="Pepsi" HeaderText="Pepsi" SortExpression="Pepsi" />
                        <asp:BoundField DataField="Water" HeaderText="Water" SortExpression="Water" />
                        <asp:BoundField DataField="Nacho_Bites" HeaderText="Nacho_Bites" SortExpression="Nacho_Bites" />
                        <asp:BoundField DataField="Mozzarella_Sticks" HeaderText="Mozzarella_Sticks" SortExpression="Mozzarella_Sticks" />
                        <asp:BoundField DataField="Time_Created" HeaderText="Time_Created" SortExpression="Time_Created" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
              
              <asp:SqlDataSource ID="sql_orders" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [Pizza From Menu] AS Pizza_From_Menu, [Pizza Size] AS Pizza_Size, [Crust Type] AS Crust_Type, [Cheese Type] AS Cheese_Type, [Dough Type] AS Dough_Type, [Pepperroni], [Green Onions] AS Green_Onions, [Red Onions] AS Red_Onions, [Ancovies], [Mushrooms], [Black Olives] AS Black_Olives, [Ham], [Pineapple], [Coca Cola] AS Coca_Cola, [Pepsi], [Water], [Nacho Bites] AS Nacho_Bites, [Mozzarella Sticks] AS Mozzarella_Sticks, [Time Created] AS Time_Created FROM [Customer Order]"></asp:SqlDataSource>
              
              
              <br />
              <h2>&nbsp; Customers</h2>
              
                  <asp:GridView ID="gv_customers" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="sql_customers" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                          <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" SortExpression="Phone Number" />
                      </Columns>
                      <FooterStyle BackColor="#CCCCCC" />
                      <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                      <RowStyle BackColor="White" />
                      <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#808080" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#383838" />
                  </asp:GridView>
              
              
              <asp:SqlDataSource ID="sql_customers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
              <br />
&nbsp;<h2>&nbsp; Logged In kitchen Staff</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Session_ID" DataSourceID="sql_employeeSessions" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Session_ID" HeaderText="Session_ID" ReadOnly="True" SortExpression="Session_ID" />
                    <asp:BoundField DataField="Account-ID-Number" HeaderText="Account-ID-Number" SortExpression="Account-ID-Number" />
                    <asp:BoundField DataField="Time-Of-Login" HeaderText="Time-Of-Login" SortExpression="Time-Of-Login" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="sql_employeeSessions" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee Session]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
              <br />
              <hr />
              <h2>&nbsp; Create Kitchen Staff Account</h2>
&nbsp;<h3>&nbsp; User Name = 
                <asp:TextBox ID="tb_username" runat="server" MaxLength="100"></asp:TextBox>
            </h3>
            <br />
            <h3>&nbsp; Password = 
                <asp:TextBox ID="tb_password" runat="server" MaxLength="100"></asp:TextBox>
            </h3>
            <br />
            <h3>&nbsp; Email = 
                <asp:TextBox ID="tb_email" runat="server" MaxLength="100"></asp:TextBox>
            </h3>
            <br />
            <h3>&nbsp; Phone Number = 
                <asp:TextBox ID="tb_phone" runat="server" MaxLength="50"></asp:TextBox>
            </h3>
            <br />
            <br />
            <center>
                <asp:Button ID="btn_createAccount" runat="server" OnClick="btn_createAccount_Click" Text="Create Account" Height="50px" Width="150px" />
            </center>
        </div>
    </form>
</body>
</html>