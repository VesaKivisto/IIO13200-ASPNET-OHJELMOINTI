using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class FeedbackForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = DateTime.Today.ToString("dd.MM.yyyy");
    }

    protected void btnSendFeedback_Click(object sender, EventArgs e)
    {
        lblMessages.Text = "";
        SaveToXML();
        SaveToMySQL();
        ClearTextBoxes(this);
    }

    private void FormReset()
    {
        ViewState.Clear();
        Response.Redirect(Request.Url.AbsoluteUri.ToString());
    }

    protected void SaveToXML()
    {
        try
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Server.MapPath("/App_Data/feedbacks.xml"));
            XmlNode rootNode = xmlDoc.SelectSingleNode("feedbacks");
            XmlNode feedbackNode = rootNode.AppendChild(xmlDoc.CreateElement("feedback", ""));
            feedbackNode.AppendChild(xmlDoc.CreateElement("Date", "")).InnerText = txtDate.Text;
            feedbackNode.AppendChild(xmlDoc.CreateElement("Course", "")).InnerText = txtCourse.Text;
            feedbackNode.AppendChild(xmlDoc.CreateElement("Learned", "")).InnerText = txtHaveLearned.Text;
            feedbackNode.AppendChild(xmlDoc.CreateElement("WantToLearn", "")).InnerText = txtWantToLearn.Text;
            feedbackNode.AppendChild(xmlDoc.CreateElement("Good", "")).InnerText = txtGood.Text;
            feedbackNode.AppendChild(xmlDoc.CreateElement("CouldBeBetter", "")).InnerText = txtBetter.Text;
            feedbackNode.AppendChild(xmlDoc.CreateElement("AnythingElse", "")).InnerText = txtOther.Text;
            xmlDoc.Save(Server.MapPath("/App_Data/feedbacks.xml"));
            lblMessages.Text += "Feedback saved to XML file!<br />";
        }
        catch (Exception ex)
        {
            lblMessages.Text += ex.Message + "<br />";
        }
    }

    protected void SaveToMySQL()
    {
        try
        {
            MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mysql"].ConnectionString);
            MySqlCommand cmd = connection.CreateCommand();
            connection.Open();
            cmd.CommandText = "INSERT INTO palaute(pvm, tekija, opintojakso, opittu, haluanoppia, hyvaa, parannettavaa, muuta) VALUES(@date, @name, @course, @haveLearned, @wantToLearn, @good, @better, @other)";
            cmd.Parameters.AddWithValue("@date", txtDate.Text);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@course", txtCourse.Text);
            cmd.Parameters.AddWithValue("@haveLearned", txtHaveLearned.Text);
            cmd.Parameters.AddWithValue("@wantToLearn", txtWantToLearn.Text);
            cmd.Parameters.AddWithValue("@good", txtGood.Text);
            cmd.Parameters.AddWithValue("@better", txtBetter.Text);
            cmd.Parameters.AddWithValue("@other", txtOther.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
            lblMessages.Text += "Feedback saved to SQL database!<br />";
        }
        catch (Exception ex)
        {
            lblMessages.Text += ex.Message + "<br />";
        }
    }

    protected void ClearTextBoxes(Control con)
    {
        foreach (Control c in con.Controls)
        {
            if (c is TextBox)
            {
                ((TextBox)c).Text = string.Empty;
            }
            else
            {
                ClearTextBoxes(c);
            }
        }
        txtDate.Text = DateTime.Today.ToString("dd.MM.yyyy");
    }
}