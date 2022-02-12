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
        </center>
        <asp:ScriptManager ID="sm_stage1" runat="server">
        </asp:ScriptManager>
        <br />
        <hr />
        <br />        
     <asp:UpdatePanel ID="up_stage1" runat="server">
        <ContentTemplate>
                <h2>&nbsp; <span class="text-decoration-underline">Pizza Size</span></h2>
                <p>
                    <asp:Image ID="im_size" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_pizza/size.jpg" Width="190px" />
                </p>
                <asp:RadioButtonList ID="rbl_pizza_size" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_pizza_size_SelectedIndexChanged" CellPadding="10" CssClass=".RadioButtonWidth">
                    <asp:ListItem>Personal (2 Slices) (£2.50)</asp:ListItem>
                    <asp:ListItem>Duo (4 Slices) (£4.50)</asp:ListItem>
                    <asp:ListItem>10&quot; (£8.50)</asp:ListItem>
                    <asp:ListItem>13&quot; (£10.75)</asp:ListItem>
                </asp:RadioButtonList>
             <br />
            <br />
            <h2>&nbsp;<span class="text-decoration-underline">Dough Type</span></h2>
                <p>
                    <asp:Image ID="im_dough" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_pizza/pizza-dough.jpg" Width="190px" />
                </p>
            <asp:RadioButtonList ID="rbl_dough_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_dough_type_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem>Normal (£3.10)</asp:ListItem>
                            <asp:ListItem>Gluten Free (£3.20)</asp:ListItem>
                        </asp:RadioButtonList>
             <br />
            <br />
            <h2>&nbsp;<span class="text-decoration-underline">Crust Type</span></h2>
                <p>
                    <asp:Image ID="im_crust" runat="server" Height="100px" Width="190px" />
                </p>
            <asp:RadioButtonList ID="rbl_crust_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_crust_type_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem>Normal Crust (£3.10)</asp:ListItem>
                            <asp:ListItem>Stuffed Crust (£5.55)</asp:ListItem>
                            <asp:ListItem>Deep Dish (£7.47)</asp:ListItem>
                        </asp:RadioButtonList>
             <br />
            <br />
            <h2>&nbsp;<span class="text-decoration-underline">Cheese Type</span></h2>
                <p>
                    <asp:Image ID="im_cheese" runat="server" Height="100px" ImageUrl="~/webpages/custom_order_page_pizza/different-cheeses.jpg" Width="190px" />
                </p>
            <asp:RadioButtonList ID="rbl_cheese_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_cheese_type_SelectedIndexChanged" CellPadding="10">
                            <asp:ListItem>American (£3.00)</asp:ListItem>
                            <asp:ListItem>Chedder (£3.00)</asp:ListItem>
                            <asp:ListItem>Mozzarella (£3.00)</asp:ListItem>
                        </asp:RadioButtonList>           
        <br />
        <hr />
        <br /> 
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
             <br />
        <br />
        <br />
                 </ContentTemplate>
        </asp:UpdatePanel>
        <center>
        &nbsp;<asp:Button ID="btn_continue" runat="server" Text="Continue" OnClick="btn_continue_Click" CssClass="btn-dark" Height="50px" Width="150px" />
        </center>
        &nbsp;&nbsp;</form>
                
</body>
</html>
