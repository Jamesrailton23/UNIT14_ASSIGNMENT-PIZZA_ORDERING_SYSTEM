<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order_complete_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.order_complete_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h3>&nbsp; Thank Your For Your Order</h3>
            <h3>&nbsp; If you had selected Pick Up for the colletion, please go to the address shown below</h3>
            <br />
            <h3>&nbsp; If You had selected delivery, your order should be with you in the time shown below</h3>
            <asp:Button ID="btn_home" runat="server" OnClick="btn_home_Click" Text="Return Home" />
            <br />

        </div>
    </form>
</body>
</html>
