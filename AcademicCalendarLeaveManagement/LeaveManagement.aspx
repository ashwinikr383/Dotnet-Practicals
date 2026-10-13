<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LeaveManagement.aspx.cs"
    Inherits="AcademicCalendarLeaveManagement.LeaveManagement" %>

<!DOCTYPE html>
<html>
<body>

<form id="form1" runat="server">

<h2>LEAVE MANAGEMENT</h2>

Student Name:
<asp:TextBox ID="txtName" runat="server" />

<br /><br />

Leave From:
<asp:TextBox ID="txtFrom" runat="server" />

<br /><br />

Leave To:
<asp:TextBox ID="txtTo" runat="server" />

<br /><br />

Leave Type:
<asp:DropDownList ID="ddlType" runat="server">
    <asp:ListItem>Casual Leave</asp:ListItem>
    <asp:ListItem>Medical Leave</asp:ListItem>
    <asp:ListItem>Personal Leave</asp:ListItem>
</asp:DropDownList>

<br /><br />

Reason:
<asp:TextBox ID="txtReason" runat="server" />

<br /><br />

<asp:Button ID="btnApply" runat="server"
    Text="Apply Leave"
    OnClick="btnApply_Click" />

<br /><br />

<asp:Label ID="msg" runat="server" />

<br /><br />

<asp:Button ID="btnCalendar" runat="server"
    Text="Back to Calendar"
    OnClick="btnCalendar_Click" />

</form>

</body>
</html>