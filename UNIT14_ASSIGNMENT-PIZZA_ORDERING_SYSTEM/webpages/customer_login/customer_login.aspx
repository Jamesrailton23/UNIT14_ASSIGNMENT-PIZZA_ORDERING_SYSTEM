<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_login.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_login.customer_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Customer Login</h1>
            <br />
            <center>
                <h3>Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</h3>
            <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btn_login" runat="server" Text="LOGIN" OnClick="btn_login_Click" />
            </center>

        </div>
    </form>
</body>
</html>
