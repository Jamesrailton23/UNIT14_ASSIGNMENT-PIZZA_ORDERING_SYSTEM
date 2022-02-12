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
        
            <asp:ScriptManager ID="sm_stage2" runat="server">
            </asp:ScriptManager>
        
            <br />
            <hr />
            <asp:UpdatePanel ID="up_stage2" runat="server">
                <ContentTemplate>
                    <br />
                    <h3>&nbsp; <span class="text-decoration-underline">Pineapple</span></h3>
            
                    <p>
                        &nbsp;<asp:Image ID="im_pineapple" runat="server" Height="75px" Width="120px" />
                    </p>
            
            <asp:RadioButtonList ID="rbl_pineapple" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_pineapple_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1.00)</asp:ListItem>
                            <asp:ListItem>Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>

                    <br />

            <br />
            <br />
            <h3>&nbsp; <span class="text-decoration-underline">Ham</span></h3>
                    <p>
                        <asp:Image ID="im_ham" runat="server" Height="75px" Width="120px" />
                    </p>
            <asp:RadioButtonList ID="rbl_ham" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_ham_SelectedIndexChanged" CellPadding="10">
                <asp:ListItem Selected="True">None</asp:ListItem>
                <asp:ListItem>Normal (£1.00</asp:ListItem>
                <asp:ListItem>Extra (£3.00)</asp:ListItem>
            </asp:RadioButtonList>
                     <br />
                     <br />
            <br />
            <h3>&nbsp; <span class="text-decoration-underline">Pepperoni</span></h3>
                    <p>
                        <asp:Image ID="im_pepporni" runat="server" Height="75px" Width="120px" />
                    </p>
            <asp:RadioButtonList ID="rbl_pepperoni" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_pepperoni_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1.00)</asp:ListItem>
                            <asp:ListItem>Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
                     <br />
            <br />
            <h3>&nbsp; <span class="text-decoration-underline">Green Onions</span></h3>
                    <p>
                        <asp:Image ID="im_greenOnions" runat="server" Height="75px" Width="120px" />
                    </p>
            <asp:RadioButtonList ID="rbl_green_onions" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_green_onions_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1.00)</asp:ListItem>
                            <asp:ListItem>Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
                     <br />
            <br />
            <h3>&nbsp; <span class="text-decoration-underline">Red Onions</span></h3>
                    <p>
                        <asp:Image ID="im_redOnions" runat="server" Height="75px" Width="120px" />
                    </p>
            <asp:RadioButtonList ID="rbl_red_onions" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_red_onions_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1.00)</asp:ListItem>
                            <asp:ListItem>Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
                     <br />
            <br />
            <h3>&nbsp; <span class="text-decoration-underline">Anchovies</span></h3>
                    <p>
                        <asp:Image ID="im_anchovies" runat="server" Height="75px" Width="120px" />
                    </p>
            <asp:RadioButtonList ID="rbl_anchovies" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_anchovies_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1.00)</asp:ListItem>
                            <asp:ListItem>Extra (£1.00)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
                     <br />
            <br />
            <h3>&nbsp; <span class="text-decoration-underline">Mushrooms</span></h3>
                    <p>
                        <asp:Image ID="im_mushrooms" runat="server" Height="75px" Width="120px" />
                    </p>
            <asp:RadioButtonList ID="rbl_mushrooms" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_mushrooms_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1.00)</asp:ListItem>
                            <asp:ListItem>Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
                     <br />
            <br />
            <h3>&nbsp; <span class="text-decoration-underline">Black Olives</span></h3>
                    <p>
                        <asp:Image ID="im_blackOlives" runat="server" Height="75px" Width="120px" />
                    </p>
            <asp:RadioButtonList ID="rbl_black_olives" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CssClass="btn" OnSelectedIndexChanged="rbl_black_olives_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1.00)</asp:ListItem>
                            <asp:ListItem>Extra (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>    
                    <br />
                <br />
                <hr />
                <br />
&nbsp;<h3>&nbsp; <span class="text-decoration-underline">Your Basket</span></h3>
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
            <br />
                <br />
                        </ContentTemplate>
            </asp:UpdatePanel>
            <center>
                &nbsp;<asp:Button ID="btn_continue" runat="server" Text="Continue" OnClick="btn_continue_Click" CssClass="btn-dark" Height="50px" Width="150px" /></center>
            <br />
            <br />
            <br />
        </form>

       

    </body>
</html>
