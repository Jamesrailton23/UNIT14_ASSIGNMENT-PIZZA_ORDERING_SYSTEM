<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_create_account.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_create_account.customer_create_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
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
            <h1>&nbsp;</h1>
            <h1 class="auto-style1">Create Your Customer Account</h1>
            <p class="text-center"> 
                <asp:Button ID="btn_home" runat="server" Height="50px" OnClick="btn_home_Click" Text="Return Home" Width="150px" CssClass="btn btn-outline-dark" />
            </p>
            <br />
            <hr />
            <br />
            <h3 class="text-center">&nbsp; Create a customer account here to view the last order you have made, This requires you to Login into your account whenever you checkout for an order</h3>
            <hr />
            <br />
            <h3>
                &nbsp; First Name * - 
                <asp:TextBox ID="tb_firstName" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
            </h3>
            <br />
            <h3>
                &nbsp; Last Name * - 
                <asp:TextBox ID="tb_lastName" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
            </h3>
            <br />
            <h3>
                &nbsp; Username * - 
                <asp:TextBox ID="tb_username" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
            </h3>
            <br />
            <h3>
                &nbsp;&nbsp; Password * - 
                <asp:TextBox ID="tb_password" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
            </h3>
            <br />
            <h3>
                &nbsp;&nbsp; Email * - 
                <asp:TextBox ID="tb_email" runat="server" MaxLength="100" CssClass="form-control-sm"></asp:TextBox>
            </h3>
            <br />
            <h3>
                &nbsp; Phone Number * - 
                <asp:TextBox ID="tb_phone" runat="server" MaxLength="50" CssClass="form-control-sm"></asp:TextBox>
            </h3>
            <hr />
            <br />
            <br />
            <center>
                <asp:Label ID="lb_message" runat="server"></asp:Label>
            </center>
            &nbsp;<center>
                <asp:Button ID="btn_create_account" runat="server" OnClick="btn_create_account_Click" Text="Create Account" Height="50px" Width="150px" CssClass="btn btn-dark" />
            </center>
            <br />
            <br />         
            <br />
                <asp:ScriptManager ID="sm_timer" runat="server"></asp:ScriptManager>          
                <asp:Timer ID="tm_to_default" runat="server" Enabled="False" Interval="10000" OnTick="tm_to_default_Tick"></asp:Timer>
            <br /> 
        </div>
    </form>
</body>
</html>
