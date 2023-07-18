<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluations.aspx.cs" Inherits="DBProj.evaluations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Evaluations</title>
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
			<h2>Marks</h2>
			<div class="dropdown">
				<asp:DropDownList ID="dropdownselect" runat="server" CssClass="dropdown-select">
				</asp:DropDownList>
			</div>
			<div class="table-layout">
				<table>
					<tr>
						<th>Task</th>
						<th>Total Marks</th>
						<th>Obtained Marks</th>
					</tr>
					<tr>
						<td>Assingment-1</td>
						<td>120</td>
						<td>95</td>
					</tr>
					<tr>
						<td>Quiz-1</td>
						<td>20</td>
						<td>20</td>
					</tr>
					<tr>
						<td>Sessional-1</td>
						<td>60</td>
						<td>42</td>
					</tr>
					<tr>
						<td>Assingment-2</td>
						<td>150</td>
						<td>135</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
    </form>
</body>
</html>