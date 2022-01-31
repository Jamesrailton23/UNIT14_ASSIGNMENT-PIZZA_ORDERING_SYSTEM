<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Big Sal's Pizza Co</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="default.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1 class="title">Big Sal's Pizza Co</h1>
            &nbsp;<br />
            <h3 class="title">The best pizza this side of the atlantic: EST 2021</h3>
            <hr />
            <br />
            <br />
            <br />
            <br />
            <br />
            <center><asp:ImageButton ID="ibtn_start_new_order" runat="server" Height="260px" Width="450px" OnClick="ibtn_start_new_order_Click" ImageUrl="~/webpages/default/startOrder.jpg" />
&nbsp;</center>
            <br />
            <h3 class="title">Click the button above to start your order</h3>
            <br />
            <br />
            <br />
            <br />
            <hr />
            <br />
          <center>  <asp:Button ID="btn_customer_login" runat="server" Text="Login" OnClick="btn_customer_login_Click" Height="50px" Width="59px" />
&nbsp;<asp:Button ID="btn_create_account" runat="server" Text="Create Account" OnClick="btn_create_account_Click" Height="50px" Width="154px" />&nbsp;
            <asp:Button ID="btn_employee_login" runat="server" Text="Employee Login" Height="50px" Width="145px" /></center>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
