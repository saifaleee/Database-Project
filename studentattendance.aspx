<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentattendance.aspx.cs" Inherits="DBProj.studentattendace" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance</title>
	<link rel="stylesheet" type="text/css" href="pagesCSS.css">
</head>
<body>
    <header class="header">FLEX</header>

    <form id="form1" runat="server">
	<div class="container">
		<div class="nav-sidebar">
			<ul>
				<li><a href="coursereg.aspx">Registered Courses</a></li>
				<li><a href="studentattendance.aspx">Attendance</a></li>
				<li><a href="evaluations.aspx">Evaluations</a></li>
				<li><a href="transcript.aspx">Transcript</a></li>
				<li><a href="teachAssmntForm.aspx">Teacher Eval Form</a></li>
				<li><a href="signInPortal.aspx">Sign Out</a></li>
			</ul>
		</div>
		<div class="complete-container">
			<h2>Attendance</h2>
			<div class="dropdown">
				<asp:DropDownList ID="dropdownselect" runat="server" CssClass="dropdown-select" OnSelectedIndexChanged="dropdownselect_SelectedIndexChanged">
				</asp:DropDownList>
			</div>
			<div class="table-layout">
				<asp:GridView ID="GridView1" runat="server" CssClass="table-layout" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="Lecture" HeaderText="Lecture" />
					<asp:BoundField DataField="Date" HeaderText="Date" />
					<asp:BoundField DataField="Presence" HeaderText="Presence" />
				</Columns>
				</asp:GridView>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
