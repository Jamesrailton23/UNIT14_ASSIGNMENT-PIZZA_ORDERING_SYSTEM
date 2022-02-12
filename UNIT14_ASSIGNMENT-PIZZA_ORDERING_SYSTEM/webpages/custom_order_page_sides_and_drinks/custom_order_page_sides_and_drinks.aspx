﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_sides_and_drinks.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.custom_order_page_sides_and_drinks.custom_order_page_sides_and_drinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customise Sides and Drinks</title>
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
            <h1 class="auto-style1">Customise Sides and Drinks</h1>
            <h3 class="text-center">Select your sides and drinks here</h3>
            <hr />
            <asp:ScriptManager ID="sm_sides" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="up_sides" runat="server">
                <ContentTemplate>
                     <h2>&nbsp; <span class="text-decoration-underline">Sides</span></h2>
                    <h3>&nbsp; Nacho bites
                 <asp:CheckBox ID="cb_nachoBites" runat="server" AutoPostBack="True" OnCheckedChanged="cb_nachoBites_CheckedChanged" />
            </h3>
            <h3>&nbsp; Mozzarella Sticks
                 <asp:CheckBox ID="cb_mozzarellaSticks" runat="server" AutoPostBack="True" OnCheckedChanged="cb_mozzarellaSticks_CheckedChanged" />
            </h3>
                    <h3>&nbsp; Cookies (Chocolate Chip)<asp:CheckBox ID="cb_cookies" runat="server" AutoPostBack="True" OnCheckedChanged="cb_cookies_CheckedChanged" />
                    </h3>
                    <br />
                    <h2>&nbsp;<span class="text-decoration-underline">Drinks</span></h2>
               
                        <h3>&nbsp;Pepsi
                            <asp:CheckBox ID="cb_pepsi" runat="server" AutoPostBack="True" OnCheckedChanged="cb_pepsi_CheckedChanged" />
                    </h3>
               
                        <h3>&nbsp;&nbsp;Water
                            <asp:CheckBox ID="cb_water" runat="server" AutoPostBack="True" OnCheckedChanged="cb_water_CheckedChanged" />
            </h3>
             <h3>&nbsp; Coca Cola
                 <asp:CheckBox ID="cb_cocaCola" runat="server" AutoPostBack="True" OnCheckedChanged="cb_cocaCola_CheckedChanged" />
            </h3>
                    <br />
                     <hr />
                     <br />
                     <br />
                     <h2>&nbsp; <span class="text-decoration-underline">Your Basket</span></h2>
                     &nbsp; Pepsi -
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
                     &nbsp;Cookies -
                     <asp:Label ID="lb_Cookies" runat="server"></asp:Label>
                     <br />
                     <br />
                     &nbsp;Stage 3 Cost =
                     <asp:Label ID="lb_cost3" runat="server"></asp:Label>
                     <br />
                     <br />
                     <br />
           </ContentTemplate>
         </asp:UpdatePanel>
            <center>
            <asp:Button ID="btn_continue" runat="server" Text="continue" OnClick="btn_continue_Click" Height="50px" Width="150px" />
            </center>

        &nbsp;<br />
        </div>
    </form>
</body>
</html>
