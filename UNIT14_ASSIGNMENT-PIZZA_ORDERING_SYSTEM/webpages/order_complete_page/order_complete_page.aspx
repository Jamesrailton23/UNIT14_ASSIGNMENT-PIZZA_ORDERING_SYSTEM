<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order_complete_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.order_complete_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1 class="text-center">&nbsp; Thank Your For Your Order</h1>
            <h2 class="text-center">&nbsp;For the colletion of your order, please go to the address shown below</h2>
            <br />
            <hr />
            <br />
            <center>
            <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.openstreetmap.org/export/embed.html?bbox=-0.24638235569000247%2C51.34174337533625%2C-0.24190306663513184%2C51.34326135860498&amp;layer=mapnik&amp;marker=51.34250237325507%2C-0.24414271116256714" style="border: 1px solid black"></iframe><br/><small></small>
            </center>
            <center>
            <hr />
            <br />
            <asp:Button ID="btn_home" runat="server" OnClick="btn_home_Click" Text="Return Home" />
            </center>
            <br />
            
        </div>
    </form>
</body>
</html>
