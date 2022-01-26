<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.checkout_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

       
        <br />
        <br />
        <h1>Checkout Page</h1>
        <h3>Please checkout for your order</h3>
        <br />
        <h3>&nbsp; Collection Method</h3>
        <h3>&nbsp;<asp:RadioButtonList ID="rbl_collection_method" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Collect</asp:ListItem>
            <asp:ListItem>Delivery</asp:ListItem>
        </asp:RadioButtonList>
            </h3>
        <br />
        <br />
        <h3>&nbsp; First Name -
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Second Name - <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </h3>
        <br />
        <h3>&nbsp; Address Line 1 - <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Address Line 2 - <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Address Line 3 (Optional) - <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Post Code - <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </h3>
        <br />
        <h3>&nbsp; Phone Number - <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </h3>
        <h3>&nbsp; Email -
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </h3>
        <br />
        <h3>&nbsp;I Confirm That My Order And Information Is Correct -
            <asp:CheckBox ID="cb_confirm" runat="server" Text="Confirm" />
        </h3>
        <p>&nbsp;</p>
        <asp:Button ID="btn_checkout" runat="server" Text="Checkout" OnClick="btn_checkout_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lb_0" runat="server"></asp:Label>
        &nbsp;-
        <asp:Label ID="lb_1" runat="server"></asp:Label>
        &nbsp;-
        <asp:Label ID="lb_2" runat="server"></asp:Label>
        &nbsp;-
        <asp:Label ID="lb_3" runat="server"></asp:Label>
        <br />
        <br />
        <br />

       
    </form>
</body>
</html>
