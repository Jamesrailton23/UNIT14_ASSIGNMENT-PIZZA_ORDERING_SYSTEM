﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM._default" %>

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
            <asp:ScriptManager ID="sm_time" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="update_panel_timer" runat="server">
                <ContentTemplate>
                    &nbsp;
                    <asp:Label ID="lb_time" runat="server" CssClass="timer"></asp:Label>
                    <asp:Timer ID="timer_current_time" runat="server" Interval="1">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <h1 class="title">Big Sal's Pizza</h1>
            &nbsp;<br />
            <h3 class="title">The best pizza this side of the atlantic</h3>
            <hr />
            <br />
            <br />
            <br />
            <br />
            <br />
            <center><asp:ImageButton ID="ibtn_start_new_order" runat="server" Height="250px" Width="500px" OnClick="ibtn_start_new_order_Click" />
&nbsp;</center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
          <center>  <asp:Button ID="btn_customer_login" runat="server" Text="Login" />
&nbsp;<asp:Button ID="btn_create_account" runat="server" Text="Create Account" />&nbsp;
            <asp:Button ID="btn_employee_login" runat="server" Text="Employee Login" /></center>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
