<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_toppings.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.custom_order_page_toppings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Cusomise Toppings</title>
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
            <h1 class="auto-style1">Cusomise Toppings</h1>
            <h3 class="text-center"> Add Diffrent toppings to your pizza</h3>
            <br />
            <br />
            <p class="text-center"> 
                <asp:Button ID="btn_home" runat="server" Height="50px" OnClick="btn_home_Click" Text="Return Home" Width="150px" CssClass="btn btn-outline-dark" />
            </p>
            <asp:ScriptManager ID="sm_stage2" runat="server">
            </asp:ScriptManager>
            <br />
            <hr />
            <br />
            <br />
            <asp:UpdatePanel ID="up_stage2" runat="server">
                <ContentTemplate>
                    <div class="container" style='height: 800px'>
                        <div class="row" style='height: 400px'>
                            <div class="col">
                    <br />
                    <h3>&nbsp; <span class="text-decoration-underline">Pineapple</span></h3>  
                    <p>
                        &nbsp;<asp:Image ID="im_pineapple" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/FC_PineappleChunks.png" />
                    </p>
                        <asp:RadioButtonList ID="rbl_pineapple" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_pineapple_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00)</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                                </div>
                    <br />
                    <br />
                    <div class="col">
                    <h3>&nbsp; <span class="text-decoration-underline">Ham</span></h3>
                    <p>
                        &nbsp;
                        <asp:Image ID="im_ham" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/ham.jpg" />
                    </p>
                        <asp:RadioButtonList ID="rbl_ham" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_ham_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                            </div>
                    <br />
                    <br />
                    <div class="col">
                    <h3>&nbsp; <span class="text-decoration-underline">Pepperoni</span></h3>
                    <p>
                        &nbsp;
                        <asp:Image ID="im_pepperoni" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/pepperoni-png-2.png" />
                    </p>
                        <asp:RadioButtonList ID="rbl_pepperoni" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_pepperoni_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00)</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                    <br />
                    <br />
                    <div class="col">
                    <h3>&nbsp; <span class="text-decoration-underline">Green Onions</span></h3>
                    <p>
                        &nbsp;
                        <asp:Image ID="im_greenOnions" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/green onions.jpg" />
                    </p>
                        <asp:RadioButtonList ID="rbl_green_onions" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_green_onions_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00)</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                            </div>
                           
                                
                    <br />
                    <div class="row" style='height: 400px'>
                        <div class="col">
                    <h3>&nbsp; <span class="text-decoration-underline">Red Onions</span></h3>
                    <p>
                        &nbsp;
                        <asp:Image ID="im_redOnions" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/Diced-Red-Onion-550x313-1.png" />
                    </p>
                        <asp:RadioButtonList ID="rbl_red_onions" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_red_onions_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00)</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                            </div>
                    <br />
                    <br />
                    <div class="col">
                    <h3>&nbsp; <span class="text-decoration-underline">Anchovies</span></h3>
                    <p>
                        &nbsp;
                        <asp:Image ID="im_anchovies" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/driesanchovies_grande.jpg" />
                    </p>
                        <asp:RadioButtonList ID="rbl_anchovies" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_anchovies_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00)</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£1.00)</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                    <br />
                    <br />
                    <div class="col">
                    <h3>&nbsp; <span class="text-decoration-underline">Mushrooms</span></h3>
                    <p>
                        &nbsp;
                        <asp:Image ID="im_mushrooms" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/mushrooms.jpg" />
                    </p>
                    <asp:RadioButtonList ID="rbl_mushrooms" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_mushrooms_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00)</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£3.00)</asp:ListItem>
                    </asp:RadioButtonList>
                        </div>
                    <br />
                    <br />
                    <div class="col">
                    <h3>&nbsp; <span class="text-decoration-underline">Black Olives</span></h3>
                    <p>
                        &nbsp;
                        <asp:Image ID="im_blackOlives" runat="server" Height="100px" Width="190px" ImageUrl="~/webpages/custom_order_page_toppings/olives.jpg" />
                    </p>
                        <asp:RadioButtonList ID="rbl_black_olives" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_black_olives_SelectedIndexChanged" CellPadding="10" TextAlign="Left">
                            <asp:ListItem class="btn btn-secondary active" Selected="True">None</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Normal (£1.00)</asp:ListItem>
                            <asp:ListItem class="btn btn-secondary active">Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                        </div>
                        </div>
                    <hr />
                    <br />
                     <div class="container" style='height: 500px'>
                    <h2>&nbsp; <span class="text-decoration-underline">Your Basket</span></h2>
                    <br />
                    &nbsp; Pineapple -
                        <asp:Label ID="lb_pineapple" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Ham -
                        <asp:Label ID="lb_ham" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Pepporni -
                    <asp:Label ID="lb_pepporni" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Green Onion -
                        <asp:Label ID="lb_greenOnions" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Red Onion -
                        <asp:Label ID="lb_redOnions" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Anchovies -
                        <asp:Label ID="lb_anchovies" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Mushrooms -
                        <asp:Label ID="lb_mushrooms" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Black Olives -
                        <asp:Label ID="lb_blackolives" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;Stage 2 Cost =
                        <asp:Label ID="lb_cost2" runat="server"></asp:Label>
                    </div>
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <center>
                &nbsp;<asp:Button ID="btn_continue" runat="server" Text="Continue" OnClick="btn_continue_Click" CssClass="btn btn-dark" Height="50px" Width="150px" />
            </center>
            <br />
            <br />
            <br />
        </form>
    </body>
</html>
