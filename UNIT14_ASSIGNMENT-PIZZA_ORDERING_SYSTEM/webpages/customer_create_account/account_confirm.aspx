<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account_confirm.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_create_account.account_confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>
                    <asp:ScriptManager ID="sm_thankYou" runat="server">
                    </asp:ScriptManager>
                    <asp:Timer ID="tm_thankYou" runat="server" Interval="5000" OnTick="tm_thankYou_Tick">
                    </asp:Timer>
                    THANK YOU</h1>
            </center>
        </div>
    </form>
</body>
</html>
