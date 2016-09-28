using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    DateTime currentDate;
    protected void Page_Load(object sender, EventArgs e)
    {
        currentDate = DateTime.Today;
        lblCurrentDate.Text = currentDate.ToString("dd.MM.yyyy");
        if (!IsPostBack)
        {
            calDate.VisibleDate = currentDate;
            lblSelectedDate.Text = calDate.VisibleDate.ToString("dd.MM.yyyy");
        }
    }

    protected void btnPreviousYear_Click(object sender, EventArgs e)
    {
        calDate.VisibleDate = calDate.VisibleDate.AddYears(-1);
    }

    protected void btnNextYear_Click(object sender, EventArgs e)
    {
        calDate.VisibleDate = calDate.VisibleDate.AddYears(1);
    }

    protected void calDate_SelectionChanged(object sender, EventArgs e)
    {
        lblSelectedDate.Text = calDate.SelectedDate.ToString("dd.MM.yyyy");
        TimeSpan span = (calDate.SelectedDate > currentDate) ? calDate.SelectedDate.Subtract(currentDate) : currentDate.Subtract(calDate.SelectedDate);
        DateTime diff = DateTime.MinValue + span;
        lblDifference.Text = (diff.Year - 1).ToString() + " years, " + (diff.Month - 1).ToString() + " months, " + (diff.Day - 1).ToString() + " days.";
    }
}