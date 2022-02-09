<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_create_account.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_create_account.customer_create_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <h1>&nbsp;</h1>
            <h1 class="text-center">Create Your Account</h1>
            <br />
            <hr />
            <br />
            <h3>&nbsp; Create an account here to view the last order you have made, This requires you to insert your account username whenever you check out</h3>
            <br />
            <h3>&nbsp; User Name - 
                <asp:TextBox ID="tb_username" runat="server" MaxLength="100"></asp:TextBox>
            </h3>
            <br />
            <h3>&nbsp; Password - 
                <asp:TextBox ID="tb_password" runat="server" MaxLength="100"></asp:TextBox>
            </h3>
            <br />
            <h3>&nbsp; Email - 
                <asp:TextBox ID="tb_email" runat="server" MaxLength="100"></asp:TextBox>
            </h3>
            <br />
            <h3>&nbsp; Phone Number - 
                <asp:TextBox ID="tb_phone" runat="server" MaxLength="50"></asp:TextBox>
            </h3>
            <br />
            &nbsp;
            <center>
            <asp:Button ID="btn_create_account" runat="server" OnClick="btn_create_account_Click" Text="Create Account" Height="50px" Width="150px" />
            </center>
            <br />
            <br />
            <div class="container mt-3">
            </div>
            <br />
            <asp:ScriptManager ID="sm_timer" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="tm_to_default" runat="server" Enabled="False" Interval="10000" OnTick="tm_to_default_Tick">
            </asp:Timer>
            <br />
            
        </div>
    </form>
</body>
</html>
