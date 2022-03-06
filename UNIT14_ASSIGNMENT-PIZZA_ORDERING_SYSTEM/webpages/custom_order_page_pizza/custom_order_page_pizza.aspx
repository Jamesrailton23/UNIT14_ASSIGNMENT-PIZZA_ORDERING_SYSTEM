<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_order_page_pizza.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.custom_order_page_pizza" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customise Pizza</title>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <br />
        <h1 class="text-decoration-underline">Customise Your Pizza</h1>
        <h3>Customise your pizza to the way that you want it to be</h3>
        <div class="progress" style="">
            <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="32" class="progress-bar" role="progressbar" style="width: 32%;">
                STAGE 1</div>
        </div>
        <p>&nbsp;</p>
        <p>
        <asp:Button ID="btn_home" runat="server" Height="50px" OnClick="btn_home_Click" Text="Return Home" Width="150px" CssClass="btn btn-outline-dark" />
        </p>
    </center>
        <asp:ScriptManager ID="sm_stage1" runat="server">
        </asp:ScriptManager>
        <br />
        <hr />
        <br />        
        <asp:UpdatePanel ID="up_stage1" runat="server">
            <ContentTemplate>
                <div class="container" style='height: 500px'>
                    <div class="row">
                        <div class="col">
                            <h2>&nbsp; <span class="text-decoration-underline">Pizza Size</span></h2>
                            <p>
                            &nbsp;
                                <asp:Image ID="im_size" runat="server" Height="120px" ImageUrl="~/webpages/custom_order_page_pizza/size.jpg" Width="200px" />
                            </p>
                                <asp:RadioButtonList ID="rbl_pizza_size" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_pizza_size_SelectedIndexChanged" CellPadding="10">
                                    <asp:ListItem class="btn btn-secondary active" Selected="True">Personal (2 Slices) (£1.00)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">Duo (4 Slices) (£2.00)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">10&quot; (£5.50)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">13&quot; (£7.75)</asp:ListItem>
                                </asp:RadioButtonList>
                        </div>
                        <br />
                        <br />
                        <div class="col">
                            <h2>&nbsp;<span class="text-decoration-underline">Dough Type</span></h2>
                            <p>
                            &nbsp;
                                <asp:Image ID="im_dough" runat="server" Height="110px" ImageUrl="~/webpages/custom_order_page_pizza/pizza-dough.jpg" Width="200px" />
                            </p>
                                <asp:RadioButtonList ID="rbl_dough_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_dough_type_SelectedIndexChanged" CellPadding="10">
                                    <asp:ListItem class="btn btn-secondary active" Selected="True">Normal (£2.10)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">Gluten Free (£2.20)</asp:ListItem>
                                </asp:RadioButtonList>
                        </div>
                        <br />
                        <br />
                        <div class="col">
                            <h2>&nbsp;<span class="text-decoration-underline">Crust Type</span></h2>
                            <p>
                            &nbsp;
                            <asp:Image ID="im_crust" runat="server" Height="110px" Width="200px" ImageUrl="~/webpages/custom_order_page_pizza/Different-Types-of-Pizza-Crust.png" />
                            </p>
                                <asp:RadioButtonList ID="rbl_crust_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_crust_type_SelectedIndexChanged" CellPadding="10">
                                    <asp:ListItem class="btn btn-secondary active" Selected="True">Normal Crust (£2.10)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">Stuffed Crust (£3.55)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">Deep Dish (£4.47)</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        <br />
                        <br />
                        <div class="col">
                            <h2>&nbsp;<span class="text-decoration-underline">Cheese Type</span></h2>
                            <p>
                            &nbsp;
                            <asp:Image ID="im_cheese" runat="server" Height="120px" ImageUrl="~/webpages/custom_order_page_pizza/different-cheeses.jpg" Width="200px" />
                            </p>
                                <asp:RadioButtonList ID="rbl_cheese_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_cheese_type_SelectedIndexChanged" CellPadding="10">
                                    <asp:ListItem class="btn btn-secondary active" Selected="True">American (£1.00)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">Chedder (£1.00)</asp:ListItem>
                                    <asp:ListItem class="btn btn-secondary active">Mozzarella (£1.35)</asp:ListItem>
                                </asp:RadioButtonList>
                        </div>
                    </div>
                </div>      
                <hr />               
                <div class="container" style='height: 300px'>
                    <h2>&nbsp; <span class="text-decoration-underline">Your basket </span> </h2>
                    <br />
                    &nbsp; Pizza Size -
                    <asp:Label ID="lb_size" runat="server"></asp:Label>
                    &nbsp;<br /> &nbsp;<br /> &nbsp; Dough Type -
                    <asp:Label ID="lb_dough" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Crust Type -
                    <asp:Label ID="lb_crust" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Cheese Type -
                    <asp:Label ID="lb_cheese" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp; Stage 1 Cost =
                    <asp:Label ID="lb_cost1" runat="server"></asp:Label>
                    </div>
                    <hr /> 
            </ContentTemplate>
        </asp:UpdatePanel>
            <center>
                &nbsp;<asp:Button ID="btn_continue" runat="server" Text="Continue" OnClick="btn_continue_Click" CssClass="btn btn-dark" Height="50px" Width="150px" />
            </center>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
