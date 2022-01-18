<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_order_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.new_order_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="new_order_page.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />     
            <h1 class="main_title">&nbsp;Select a Pizza</h1>
            <br />
            <h3 class="main_title">&nbsp;Custom Pizza</h3>
            <br />
            <center>
            <asp:ImageButton ID="ibtn_custom_pizza" runat="server" Height="100px" Width="100px" OnClick="ibtn_custom_pizza_Click" />
             </center>
            <br />
            <br />
            <hr />
            <br />
            <br />
            <h3 class="subtitle">&nbsp;&nbsp;Pepporni &nbsp;&nbsp; Cheese &nbsp;&nbsp; Hawaiian&nbsp; &nbsp; Ham</h3>
            <br />
            <center>
            <asp:ImageButton ID="ibtn_pizza_Pepporni" runat="server" Height="100px" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ibtn_pizza_Cheese" runat="server" Height="100px" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ibtn_pizza_Hawaiian" runat="server" Height="100px" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ibtn_pizza_Ham" runat="server" Height="100px" Width="100px" />
                </center>
            <br />

        </div>
    </form>
</body>
</html>
