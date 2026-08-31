using System;

namespace AcademicCalendarLeaveManagement
{
    public partial class AcademicCalendar : System.Web.UI.Page
    {
        protected void cal_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = cal.SelectedDate.ToShortDateString();
            Session["Date"] = txtDate.Text;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["Event"] = txtEvent.Text;
            Response.Cookies["Event"].Value = txtEvent.Text;
            msg.Text = "Event Saved!";
        }

        protected void btnLeave_Click(object sender, EventArgs e)
        {
            Response.Redirect("LeaveManagement.aspx");
        }
    }
}