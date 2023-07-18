<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editWeightage.aspx.cs" Inherits="DBProj.editWeightage" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Weightage</title>
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
			<h2>Course Weightage</h2>
			    <div class="dropdown">
				<asp:DropDownList ID="dropdownselect" runat="server" CssClass="dropdown-select" OnSelectedIndexChanged="dropdownselect_SelectedIndexChanged">
				</asp:DropDownList>
				</div>
			<asp:TextBox ID="Date" runat="server" CssClass="textbox" placeholder="Enter Date Today" required></asp:TextBox>
			<div class="table-layout">
				<asp:GridView ID="GridView1" runat="server" CssClass="table-layout" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
				<Columns>
					<asp:BoundField DataField="Student ID" HeaderText="Student ID" />
					<asp:TemplateField HeaderText="Present">
					<ItemTemplate>
                    <asp:CheckBox ID="chkPresence" runat="server" />
					</ItemTemplate>
					</asp:TemplateField>
				</Columns>
				</asp:GridView>
				<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit Weightage" />
			</div>
		</div>
		</div>
		</form>
</body>
</html>