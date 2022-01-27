<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_toppings.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.custom_order_page_toppings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
    <body>
        <form id="form1" runat="server">
            <h1 class="text-center">Cusomise Toppings</h1>
            <h3 class="text-center"> Add Diffrent toppings to your pizza</h3>
        
            
            <h3>Pineapple</h3>
           
            <asp:RadioButtonList ID="rbl_pineapple" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal (£1)</asp:ListItem>
                            <asp:ListItem>Extra (£3)</asp:ListItem>
                        </asp:RadioButtonList>

            <br />
            <br />
            <h3>Ham</h3>
            <asp:RadioButtonList ID="rbl_ham" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">None</asp:ListItem>
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Extra</asp:ListItem>
            </asp:RadioButtonList>
                     <br />
            <br />
            <h3>Pepperoni</h3>
            <asp:RadioButtonList ID="rbl_pepperoni" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Extra</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>Green Onions</h3>
            <asp:RadioButtonList ID="rbl_green_onions" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Extra</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>Red Onions</h3>
            <asp:RadioButtonList ID="rbl_red_onions" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Extra</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>Ancovies</h3>
            <asp:RadioButtonList ID="rbl_ancovies" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Extra</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>Mushrooms</h3>
            <asp:RadioButtonList ID="rbl_mushrooms" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Extra</asp:ListItem>
                        </asp:RadioButtonList>
                     <br />
            <br />
            <h3>Black Olives</h3>
            <asp:RadioButtonList ID="rbl_black_olives" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Extra</asp:ListItem>
                        </asp:RadioButtonList>    
                <br />
                &nbsp;<asp:Button ID="btn_confirm" runat="server" Text="Confirm" OnClick="btn_confirm_Click" />
            <br />
        </form>

       

    </body>
</html>
