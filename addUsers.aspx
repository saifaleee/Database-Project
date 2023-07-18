<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addUsers.aspx.cs" Inherits="DBProj.addUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Users</title>
	<link rel="stylesheet" type="text/css" href="pagesCSS.css">
</head>
<body>
    <header class="header">FLEX</header>

	<div class="container">
		<div class="nav-sidebar">
			<ul>
				<li><a href="academicReports.aspx">View Reports</a></li>
				<li><a href="addUsers.aspx">Add Users</a></li>
				<li><a href="assigncoursInst.aspx">Course Coordinators</a></li>
				<li><a href="signInPortal.aspx">Sign Out</a></li>
			</ul>
		</div>
		<div class="complete-container">
			<h2>Add Users</h2>
			<div class="table-layout">
            <form id="form1" runat="server">
            <table style="width: 100%">
                <tr>
                        <td> <asp:TextBox ID="fname" runat="server" CssClass="textbox" placeholder="Enter First Name" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="lname" runat="server" CssClass="textbox" placeholder="Enter Last Name" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="cnic" runat="server" CssClass="textbox" placeholder="Enter CNIC" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="role" runat="server" CssClass="textbox" placeholder="Enter Role" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="phone" runat="server" CssClass="textbox" placeholder="Enter Phone No." required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="email" runat="server" CssClass="textbox" placeholder="Enter Email ID" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="adress" runat="server" CssClass="textbox" placeholder="Enter Address" required></asp:TextBox> </td>
                </tr>
                <tr>
                        <td> <asp:TextBox ID="password" runat="server" CssClass="textbox" placeholder="Enter Password" required></asp:TextBox> </td>
                </tr>
            </table>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add User" />
        </form>
		</div>
	</div>
    </div>
</body>
</html>
