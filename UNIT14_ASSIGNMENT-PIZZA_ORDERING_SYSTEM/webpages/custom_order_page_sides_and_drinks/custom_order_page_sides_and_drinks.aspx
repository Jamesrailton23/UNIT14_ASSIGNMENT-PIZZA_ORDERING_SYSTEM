<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_sides_and_drinks.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.custom_order_page_sides_and_drinks.custom_order_page_sides_and_drinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Sides and Drinks</h1>
            <h3>Select your sides and drinks here</h3>
            <br />
            <h3>Pepsi</h3>
            <asp:RadioButtonList ID="rbl_pepsi" runat="server" RepeatDirection="Horizontal">       
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
            <h3>Coca Cola</h3>
            <asp:RadioButtonList ID="rbl_coca_cola" runat="server" RepeatDirection="Horizontal">       
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                        <h3>Water</h3>
            <asp:RadioButtonList ID="rbl_water" runat="server" RepeatDirection="Horizontal">       
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
             <h3>Coca Cola</h3>
            <asp:RadioButtonList ID="rbl_nacho_bites" runat="server" RepeatDirection="Horizontal">       
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                        <h3>Water</h3>
            <asp:RadioButtonList ID="rbl_mozzarella_sticks" runat="server" RepeatDirection="Horizontal">       
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>

            <br />
            <asp:Button ID="btn_confirm" runat="server" Text="confirm" />
            <br />

        </div>
    </form>
</body>
</html>
