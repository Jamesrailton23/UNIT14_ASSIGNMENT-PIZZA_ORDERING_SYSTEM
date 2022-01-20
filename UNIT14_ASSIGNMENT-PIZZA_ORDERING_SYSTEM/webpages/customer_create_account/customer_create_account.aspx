<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_create_account.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.webpages.customer_create_account.customer_create_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <h1>Create Your Account</h1>
            <h3>Create an account here to view the last order you have made, This requires you to insert your account username whenever you check out</h3>
            <br />
            <h3>User Name - 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </h3>
            <br />
            <h3>Password - 
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </h3>
            <br />
            <h3>Email - 
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </h3>
            <br />
            <h3>Phone Number - 
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </h3>
            <br />
            <asp:Button ID="btn_create_account" runat="server" OnClick="btn_create_account_Click" Text="Create Account" />
            <br />
            
        </div>
    </form>
</body>
</html>
