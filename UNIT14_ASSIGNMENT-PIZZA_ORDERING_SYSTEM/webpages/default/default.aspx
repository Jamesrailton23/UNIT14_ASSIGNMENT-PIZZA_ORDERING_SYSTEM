<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="default.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <h1 class="main_title_text">Big Sal's Pizza</h1>
            <br />
            <h3 class="subtitle">The best pizza this side of the atlantic</h3>
            <hr />
            <br />
            <asp:Button ID="btn_customer_login" runat="server" Text="Login" />
&nbsp;<asp:Button ID="btn_create_account" runat="server" Text="Create Account" />&nbsp;
            <asp:Button ID="btn_employee_login" runat="server" Text="Employee Login" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
