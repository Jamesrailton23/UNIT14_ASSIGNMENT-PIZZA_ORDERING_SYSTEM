<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_sides_and_drinks.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.custom_order_page_sides_and_drinks.custom_order_page_sides_and_drinks" %>

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
            <div class="progress" style="">
                <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="64" class="progress-bar" role="progressbar" style="width: 64%;">
                    STAGE 3</div>
            </div>
            <p class="text-center">&nbsp;</p>
            <br />
            <br />
            <p class="text-center">
                <asp:Button ID="btn_home" runat="server" Height="50px" OnClick="btn_home_Click" Text="Return Home" Width="150px" CssClass="btn btn-outline-dark" />
            </p>
            <br />
            <hr />
            <asp:ScriptManager ID="sm_sides" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="up_sides" runat="server">
                <ContentTemplate>
                    <h2>&nbsp; <span class="text-decoration-underline">Sides</span></h2>
                    <h3>
                        &nbsp;
                        <asp:Image ID="im_nachobites" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_sides_and_drinks/chicken-bites.jpg" Width="190px" />
                        &nbsp;Nacho bites (£5.00)
                        <asp:CheckBox ID="cb_nachoBites" runat="server" AutoPostBack="True" OnCheckedChanged="cb_nachoBites_CheckedChanged" />
                    </h3>
                    <p>
                        &nbsp;</p>
                    <h3>
                        &nbsp;
                        <asp:Image ID="im_mozzarella" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_sides_and_drinks/mozzerella-sticks-156136-3.jpg" Width="190px" />
                        &nbsp;Mozzarella Sticks (£4.50)
                        <asp:CheckBox ID="cb_mozzarellaSticks" runat="server" AutoPostBack="True" OnCheckedChanged="cb_mozzarellaSticks_CheckedChanged" />
                    </h3>
                    <p>
                        &nbsp;
                    </p>
                    <h3>
                        &nbsp;
                        <asp:Image ID="im_cookies" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_sides_and_drinks/cookies.jpg" Width="190px" />
                        &nbsp;Cookies (Chocolate Chip) (£0.99)<asp:CheckBox ID="cb_cookies" runat="server" AutoPostBack="True" OnCheckedChanged="cb_cookies_CheckedChanged" />
                    </h3>
                    <br />
                    <br />
                    <h2>&nbsp;<span class="text-decoration-underline">Drinks</span></h2>
                    <h3>
                        &nbsp;
                        <asp:Image ID="im_pespsi" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_sides_and_drinks/pepsi.jpg" Width="190px" />
                        &nbsp;Pepsi (£3.00)
                        <asp:CheckBox ID="cb_pepsi" runat="server" AutoPostBack="True" OnCheckedChanged="cb_pepsi_CheckedChanged" />
                    </h3>
                    <p>
                        &nbsp;</p>
                    <h3>
                        &nbsp;
                        <asp:Image ID="im_water" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_sides_and_drinks/water.jpg" Width="190px" />
                        &nbsp;Water (£1.00)
                        <asp:CheckBox ID="cb_water" runat="server" AutoPostBack="True" OnCheckedChanged="cb_water_CheckedChanged" />
                    </h3>
                    <p>
                        &nbsp;</p>
                    <h3>
                        &nbsp;
                        <asp:Image ID="im_cocacola" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_sides_and_drinks/cocacola.jpg" Width="190px" />
                        &nbsp;Coca Cola (£3.00)
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
            <asp:Button ID="btn_continue" runat="server" Text="continue" OnClick="btn_continue_Click" Height="50px" Width="150px" CssClass="btn btn-dark" />
            </center>
        &nbsp;<br />
        </div>
    </form>
</body>
</html>
