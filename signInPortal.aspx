<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signInPortal.aspx.cs" Inherits="DBProj.signInPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In Portal</title>
	<link rel="stylesheet" type="text/css" href="signIndesign.css">
    <style>
    body {background-image: url('signinbg.jpg');}
</style>

</head>
<body>
    <header class="header">FLEX</header>
    <div class="completestuff">
        <form class="signup-box" runat="server">
            <table style="width: 100%">
                <tr>
                    <th>
                        <h1 class="signup-title">Sign In</h1>
                    </th>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="name" runat="server" CssClass="textbox" placeholder="Enter User ID" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="password" runat="server" CssClass="textbox" TextMode="Password" placeholder="Enter Password" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" /> </td>
                </tr>
            </table>
        </form>
     </div>
</body>
</html>