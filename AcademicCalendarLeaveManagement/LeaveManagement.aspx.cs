using System;

namespace AcademicCalendarLeaveManagement
{
    public partial class LeaveManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Date"] != null)
                txtFrom.Text = Session["Date"].ToString();
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Session["Student"] = txtName.Text;
            Response.Cookies["Student"].Value = txtName.Text;

            msg.Text = "Leave Applied Successfully!";
        }

        protected void btnCalendar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcademicCalendar.aspx");
        }
    }
}