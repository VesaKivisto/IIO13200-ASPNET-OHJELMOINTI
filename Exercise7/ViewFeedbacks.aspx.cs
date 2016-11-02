using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewFeedbacks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetFeedbacksFromXML_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            ds.ReadXml(Server.MapPath("/App_Data/feedbacks.xml"));
            dt = ds.Tables[0];
            gvFeedbacks.DataSource = dt.DefaultView;
            gvFeedbacks.DataBind();
            lblMessages.Text = string.Format("Found {0} feedbacks", dt.Rows.Count);
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }

    protected void btnGetFeedbacksFromMySQL_Click(object sender, EventArgs e)
    {
        try
        {
            MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mysql"].ConnectionString);
            connection.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM palaute;", connection);
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            connection.Close();
            da.Fill(dt);
            gvFeedbacks.DataSource = dt.DefaultView;
            gvFeedbacks.DataBind();
            lblMessages.Text = string.Format("Found {0} feedbacks", dt.Rows.Count);
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }
}