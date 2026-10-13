<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AcademicCalendar.aspx.cs"
    Inherits="AcademicCalendarLeaveManagement.AcademicCalendar" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Academic Calendar</title>
</head>

<body>
<form id="form1" runat="server">

<h2>ACADEMIC CALENDAR</h2>

Select Date:
<br />

<asp:Calendar ID="cal" runat="server"
    OnSelectionChanged="cal_SelectionChanged" />

<br />

Selected Date:
<asp:TextBox ID="txtDate" runat="server" />

<br /><br />

Academic Event:
<asp:TextBox ID="txtEvent" runat="server" />

<br /><br />

<asp:Button ID="btnSave" runat="server"
    Text="Save Event"
    OnClick="btnSave_Click" />

<br /><br />

<asp:Label ID="msg" runat="server" />

<br /><br />

<asp:Button ID="btnLeave" runat="server"
    Text="Leave Management"
    OnClick="btnLeave_Click" />

</form>
</body>
</html>