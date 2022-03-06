<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_order_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.new_order_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />     
            <h1 class="text-center">&nbsp;Select a Pizza</h1>
            <div class="progress" style="">
                <div class="progress-bar" role="progressbar" aria-valuenow="16" style="width: 16%;" aria-valuemin="0" aria-valuemax="100">NEW ORDER</div>
            </div>
            <hr />
            <h3 class="text-center">&nbsp;<span class="text-decoration-underline">Custom Pizza</span></h3>
            <br />
            <center>
                <asp:ImageButton ID="ibtn_custom_pizza" runat="server" Height="200px" Width="200px" OnClick="ibtn_custom_pizza_Click" ImageUrl="~/webpages/new_order_page/customPizza.jpg" BorderStyle="Solid" />
            </center>
            <br />
            <br />
            <hr />
            <br />
            <br />
            <br />
            <div class ="container" style='height: 300px'>
                <div class="row">
                    <div class="col">
                        <h3 class="text-decoration-underline">Pepperoni</h3>
                        <asp:ImageButton ID="ibtn_pizza_Pepperoni" runat="server" Height="200px" Width="200px" OnClick="ibtn_pizza_Pepperoni_Click" ImageUrl="~/webpages/new_order_page/pepporni.png" BorderStyle="Solid" />
                        <h3>Cost = £19.26</h3>
                    </div>
                    <div class="col">
                        <h3  class="text-decoration-underline">Marhertia</h3>
                        <asp:ImageButton ID="ibtn_pizza_Margherita" runat="server" Height="200px" Width="200px" OnClick="ibtn_pizza_Margherita_Click" ImageUrl="~/webpages/new_order_page/MargheritaPizza.png" BorderStyle="Solid" />
                        <h3>Cost = £16.31</h3>
                    </div>
                    <div class="col">
                        <h3  class="text-decoration-underline">Hawaiian</h3>
                        <asp:ImageButton ID="ibtn_pizza_Hawaiian" runat="server" Height="200px" Width="200px" OnClick="ibtn_pizza_Hawaiian_Click" ImageUrl="~/webpages/new_order_page/hawaiian.png" BorderStyle="Solid" />
                        <h3>Cost = £18.70</h3>
                    </div>
                    <div class="col">
                        <h3  class="text-decoration-underline">Ham & Mushroom</h3>
                        <asp:ImageButton ID="ibtn_pizza_hamAndMushroom" runat="server" Height="200px" Width="200px" OnClick="ibtn_pizza_Ham_Click" ImageUrl="~/webpages/new_order_page/hamandmush.jpg" BorderStyle="Solid" />
                        <h3>Cost = £17.56</h3>
                    </div>
                </div>
            </div>
                <br />
                <hr />
                <br />
            <div class="text-center">
                <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="Return Back" CssClass="btn btn-outline-dark" Height="50px" Width="150px" />    
            </div>
            <br />
        </div>
    </form>
</body>
</html>
