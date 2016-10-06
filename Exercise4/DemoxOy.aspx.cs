using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DemoxOy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = JAMK.IT.DBDemoxOy.GetDataReal();
            gvCustomers.DataSource = dt;
            gvCustomers.DataBind();
        }
        catch (Exception)
        {

            throw;
        }
    }
}