<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teachersReports.aspx.cs" Inherits="DBProj.teachersReports" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Report</title>
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
			<h2>Attendance Report</h2>
			    <div class="dropdown">
				<asp:DropDownList ID="dropdownselect" runat="server" CssClass="dropdown-select" OnSelectedIndexChanged="dropdownselect_SelectedIndexChanged">
				</asp:DropDownList>
				</div>
			<div class="table-layout">
				<asp:GridView ID="GridView1" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Student ID" HeaderText="Student ID" />
					<asp:BoundField DataField="Student Name" HeaderText="Student Name" />
					<asp:BoundField DataField="Course Semester" HeaderText="Course Semester" />
					<asp:BoundField DataField="Course Name" HeaderText="Course Name" />
					<asp:BoundField DataField="Percentage Attendance" HeaderText="Percentage Attendance" />
				</Columns>
				</asp:GridView>
			</div>
		</div>
		</div>
		</form>
</body>
</html>
