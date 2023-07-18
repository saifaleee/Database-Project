<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addMarks.aspx.cs" Inherits="DBProj.addMarks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Marks</title>
	<link rel="stylesheet" type="text/css" href="pagesCSS.css">
</head>
<body>
    <header class="header">FLEX</header>

    <form id="form1" runat="server">
	<div class="container">
		<div class="nav-sidebar">
			<ul>
				<li><a href="teachersReports.aspx">View Reports</a></li>
				<li><a href="teachersFeedbacks.aspx">View Feedbacks</a></li>
				<li><a href="AddAttendence.aspx">Add Attendence</a></li>
				<li><a href="addMarks.aspx">Add Marks</a></li>
				<li><a href="editWeightage.aspx">Course Weightage</a></li>
				<li><a href="signInPortal.aspx">Sign Out</a></li>
			</ul>
		</div>
		<div class="complete-container">
			<h2>Add Marks</h2>
			    <div class="dropdown">
				<asp:DropDownList ID="dropdownselectSection" runat="server" CssClass="dropdown-select">
				</asp:DropDownList>
				</div>
				<div class="dropdown">
				<asp:DropDownList ID="DropDownselectFormat" runat="server" CssClass="dropdown-select">
				</asp:DropDownList>
				</div>
				<td> <asp:TextBox ID="TotalMarks" runat="server" CssClass="textbox" placeholder="Enter Total Marks" required></asp:TextBox></td> <br/>
			<div class="table-layout">
				<asp:GridView ID="GridView1" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Student ID" HeaderText="Student ID" />
					<asp:TemplateField HeaderText="Obtained Marks">
					<ItemTemplate> <asp:TextBox ID="Marks" runat="server" required></asp:TextBox> </ItemTemplate>
					</asp:TemplateField>
				</Columns>
				</asp:GridView>
			</div>
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload Marks" />
		</div>
		</div>
		</form>
</body>
</html>