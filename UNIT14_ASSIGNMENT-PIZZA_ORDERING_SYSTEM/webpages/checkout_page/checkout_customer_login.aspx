<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout_customer_login.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.checkout_page.checkout_customer_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <div>
            <br />
            <h1 class="auto-style1"><strong>Customer Login</strong></h1>
            <br />
            <center>
                <h3>Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</h3>
                <asp:TextBox ID="tb_username" runat="server" MaxLength="100" BorderStyle="Solid" CssClass="form-control-sm"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_password" runat="server" TextMode="Password" MaxLength="100" BorderStyle="Solid" CssClass="form-control-sm"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" Height="50px" Width="150px" CssClass="btn btn-dark" />
                <br />
                <br />
                <br />
                <asp:Label ID="lb_errorMessage" runat="server" CssClass="alert-danger" Font-Bold="True"></asp:Label>
            </center>   
            <br />
            <hr />
            <br />
                <div>
                    <center>
                        <asp:Button ID="btn_goBack" runat="server" OnClick="btn_goBack_Click" Text="Return Back" CssClass="btn btn-outline-dark" Height="50px" Width="150px" />
                    </center>     
                </div>
        </div>
    </form>
</body>
</html>
