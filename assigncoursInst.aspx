<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assigncoursInst.aspx.cs" Inherits="DBProj.assigncoursInst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Coordinators</title>
	<link rel="stylesheet" type="text/css" href="pagesCSS.css">
</head>
<body>
    <header class="header">FLEX</header>

    <form id="form1" runat="server">
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
			<h2>Add Course Coordinators</h2>
			<div class="table-layout">
				<table>
					<tr>
						<th>Instructor ID</th>
						<th>Course ID</th>
					</tr>
					<tr>
                        <td><div class="dropdown">
							<asp:DropDownList ID="dropdownInstID" runat="server" CssClass="dropdown-select">
							</asp:DropDownList></div></td>
                        <td><div class="dropdown">
							<asp:DropDownList ID="DropDownCourseID" runat="server" CssClass="dropdown-select">
							</asp:DropDownList></div></td>
					</tr>
				</table>
				<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
			</div>

			<h2>Assigned Coordinators</h2>
			<div class="table-layout">
				<asp:GridView ID="GridView1" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Course ID" HeaderText="Course ID" />
					<asp:BoundField DataField="Instructor" HeaderText="Instructor" />
				</Columns>
				</asp:GridView>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
