<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teachersFeedbacks.aspx.cs" Inherits="DBProj.teachersFeedbacks" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Feedbacks</title>
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
			<h2>Teacher Feedbacks</h2>
			    <div class="dropdown">
				<asp:DropDownList ID="dropdownselect" runat="server" CssClass="dropdown-select" OnSelectedIndexChanged="dropdownselect_SelectedIndexChanged">
				</asp:DropDownList>
				</div>

			<div class="table-layout">
				<asp:GridView ID="GridView1" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Appearance" HeaderText="Appearance" />
					<asp:BoundField DataField="Profession Practice" HeaderText="Profession Practice" />
					<asp:BoundField DataField="Teaching" HeaderText="Teaching" />
					<asp:BoundField DataField="Student Treatment" HeaderText="Student Treatment" />
				</Columns>
				</asp:GridView>
			</div>
			<br />
			<div class="table-layout">
				<asp:GridView ID="GridView2" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Comments" HeaderText="Comments" />
				</Columns>
				</asp:GridView>
			</div>
		</div>
	</div>
	</form>
</body>
</html>
