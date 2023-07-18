<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coursereg.aspx.cs" Inherits="DBProj.coursereg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Registration</title>
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
			<h2>Current Courses</h2>
			<div class="table-layout">
				<table>
					<tr>
						<th>Course ID</th>
						<th>Course Name</th>
						<th>Section</th>
					</tr>
					<tr>
						<td>CS-1002</td>
						<td>Programming Fundamentals</td>
						<td>C</td>
					</tr>
					<tr>
						<td>MT-1012</td>
						<td>Linear Algebra</td>
						<td>A</td>
					</tr>
				</table>
			</div>
			<br />
			<h2>Offered Courses</h2>
			<div class="table-layout">
				<table>
					<tr>
						<th>Course ID</th>
						<th>Course Name</th>
						<th>Select</th>
					</tr>
					<tr>
						<td>CS-1004</td>
						<td>Data Structures</td>
						<td><input type="checkbox" /></td>
					</tr>
					<tr>
						<td>MT-1022</td>
						<td>Probability and Statistics</td>
						<td><input type="checkbox" /></td>
					</tr>
				</table>
				<input type="submit" value="Register" />
			</div>
		</div>
	</div>
    </form>
</body>
</html>