<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="academicReports.aspx.cs" Inherits="DBProj.academicReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Academic Reports</title>
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
			<h2>Student Section Report</h2>
				<div class="dropdown">
				<asp:DropDownList ID="dropdownselect" runat="server" CssClass="dropdown-select" OnSelectedIndexChanged="dropdownselect_SelectedIndexChanged" AutoPostBack="true">
				</asp:DropDownList>
				</div>
				<div class="table-layout">
				<asp:GridView ID="GridView1" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Section" HeaderText="Section" />
					<asp:BoundField DataField="Student ID" HeaderText="Student ID" />
					<asp:BoundField DataField="Student Name" HeaderText="Student Name" />
				</Columns>
				</asp:GridView>
				</div>
			<h2>Offered Courses Report</h2>
				<div class="dropdown">
				<asp:DropDownList ID="DropDownSemester" runat="server" CssClass="dropdown-select" OnSelectedIndexChanged="dropdownsemester_SelectedIndexChanged" AutoPostBack="true">
				</asp:DropDownList>
				</div>
				<div class="table-layout">
				<asp:GridView ID="GridView2" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Course ID" HeaderText="Course ID" />
					<asp:BoundField DataField="Course Name" HeaderText="Course Name" />
					<asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" />
				</Columns>
				</asp:GridView>
				</div>
			<h2>Course Allocation Report</h2>
				<div class="dropdown">
				<asp:DropDownList ID="DropDownCourse" runat="server" CssClass="dropdown-select" OnSelectedIndexChanged="dropdowncourse_SelectedIndexChanged" AutoPostBack="true">
				</asp:DropDownList>
				</div>
				<div class="table-layout">
				<asp:GridView ID="GridView3" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Course ID" HeaderText="Course ID" />
					<asp:BoundField DataField="Course Name" HeaderText="Course Name" />
					<asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" />
					<asp:BoundField DataField="Sections" HeaderText="Sections" />
					<asp:BoundField DataField="Instructors" HeaderText="Instructors" />
					<asp:BoundField DataField="Course Coordinator" HeaderText="Course Coordinator" />
				</Columns>
				</asp:GridView>
				</div>
		</div>
    </div>
	</form>
</body>
</html>
