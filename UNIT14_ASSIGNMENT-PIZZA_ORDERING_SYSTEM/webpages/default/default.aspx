<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Big Sal's Pizza Co</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
    </style>

    
</head>
<body onload="startTime()">
    <form id="form1" runat="server">
        <div>
            <br />
            <h1 class="auto-style1">Big Sal's Pizza Co</h1>
            <h3 class="auto-style1"><em>The best pizza this side of the atlantic: EST 2021</em></h3>
            <br />
            <center>
            <div id="clockdate">   
                <div class="clockdate-wrapper">     
                   <div id="clock"></div>     
                   <div id="date"></div>   
               </div> 
           </div> 
           </center>
            <br />
            <hr />
            <br />
            <br />
            <br />
            <br />
            <br />
            <center><asp:ImageButton ID="ibtn_start_new_order" runat="server" Height="104px" Width="329px" OnClick="ibtn_start_new_order_Click" ImageUrl="~/webpages/default/starorder.png" BorderStyle="None" />
&nbsp;</center>
            <br />
            <h3 class="auto-style1"><strong>Click the button above to start your order</strong></h3>
            <br />
            <br />
            <br />
            <br />
            <hr />
            <br />
          <center>  <asp:Button ID="btn_customer_login" runat="server" Text="Login" OnClick="btn_customer_login_Click" Height="50px" Width="150px" CssClass="btn-dark" />
&nbsp;<asp:Button ID="btn_create_account" runat="server" Text="Create Account" OnClick="btn_create_account_Click" Height="50px" Width="150px" CssClass="btn-dark" />&nbsp;</center>
            <br />
            <br />
            <br />
            <br />
            <center><asp:Button ID="btn_employee_login" runat="server" Text="Employee Login" Height="50px" Width="150px" OnClick="btn_employee_login_Click" CssClass="btn-warning" /></center>
            <br />
            <br />
        </div>
    </form>
    <script src="default.js"></script>
</body>
</html>
