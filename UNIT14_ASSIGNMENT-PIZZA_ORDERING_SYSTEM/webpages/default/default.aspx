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
        .auto-style2 {
            color: #000099;
            font-weight: bold;
        }
        .auto-style3 {
            color: #FFFF00;
            font-weight: bold;
        }
    </style>

    
</head>
<body onload="startTime()">
    <form id="form1" runat="server">
        <div>
            <br />
            <h1 class="auto-style1"><span class="auto-style2">Big Sal's</span> <span class="auto-style3">Pizza Co</span></h1>
            <h3 class="auto-style1"><em>"The best pizza this side of the atlantic"</em>: EST: 2021</h3>
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
            <br />         
            <center>
                <asp:Image ID="im_bigSal" runat="server" Height="300px" ImageUrl="~/webpages/default/pizzaman.jpg" Width="300px" AlternateText="BIG SAL" />
            </center>
            <br />
            <hr />
            <br />
            <br />
            <br />
            <br />
            <br />
            <center>
                <asp:ImageButton ID="ibtn_start_new_order" runat="server" Height="104px" Width="329px" OnClick="ibtn_start_new_order_Click" ImageUrl="~/webpages/default/starorder.png" BorderStyle="None" />&nbsp;
            </center>
            <br />
            <h3 class="auto-style1"><strong>Click the button above to begin your order</strong></h3>
            <br />
            <br />
            <br />
            <hr />
            <br />
            <center>
                <asp:Button ID="btn_customer_login" runat="server" Text="Login" OnClick="btn_customer_login_Click" Height="50px" Width="150px" CssClass="btn btn-dark" />
                &nbsp;<asp:Button ID="btn_create_account" runat="server" Text="Create Account" OnClick="btn_create_account_Click" Height="50px" Width="150px" CssClass="btn btn-dark" />&nbsp;
            </center>
            <br />
            <hr />
            <br />
            <center>

                <asp:ImageButton ID="ib_facebook" runat="server" CssClass="fab fa-facebook-f" Height="40px" ImageUrl="~/webpages/default/1200px-Facebook_Logo_(2019).png" OnClick="ib_facebook_Click" Width="40px" />
&nbsp;<asp:ImageButton ID="ib_twitter" runat="server" Height="40px" ImageUrl="~/webpages/default/OIP.jpg" OnClick="ib_twitter_Click" Width="40px" />
&nbsp;<asp:ImageButton ID="ib_instagram" runat="server" Height="40px" ImageUrl="~/webpages/default/logo-instagram-1080p-5.png" OnClick="ib_instagram_Click" Width="40px" />
&nbsp;<asp:ImageButton ID="ib_linkedin" runat="server" Height="40px" ImageUrl="~/webpages/default/linkedin.jpg" OnClick="ib_linkedin_Click" Width="40px" />

            </center>
            <br />
            <center>

            </center>
            <br />         
            <br />
            <br />
            <br />
            <br />          
            <center><asp:Button ID="btn_employee_login" runat="server" Text="Employee Login" Height="50px" Width="150px" OnClick="btn_employee_login_Click" CssClass="btn btn-outline-warning" /></center>
            <br />
        </div>
    </form>
    <script src="default.js"></script>
</body>
</html>
