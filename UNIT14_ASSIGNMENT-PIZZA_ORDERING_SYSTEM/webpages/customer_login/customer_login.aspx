<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_login.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_login.customer_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Login</title>
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
        <br />
        <div>        
            <h1 class="auto-style1"><strong>Customer Login</strong></h1>
            <br />
            <center>
                <h3>Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</h3>
            <asp:TextBox ID="tb_username" runat="server" MaxLength="100" BorderStyle="Solid" CssClass="tb"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_password" runat="server" TextMode="Password" MaxLength="100" BorderStyle="Solid"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" Height="50px" Width="150px" CssClass="btn-dark" />
                <br />
                <br />
                <br />                        
                <asp:Label ID="lb_errorMessage" runat="server" CssClass="alert-danger" Font-Bold="True"></asp:Label>
            </center>
            
            <br />
            <br />

                <div>
                   <center>
                       <asp:Button ID="btn_home" runat="server" OnClick="btn_home_Click" Text="Return Home" CssClass="btn-outline-dark" />
                   </center>     
                </div>
        </div>
    </form>
</body>
</html>
