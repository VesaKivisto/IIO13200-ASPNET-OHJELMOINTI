using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Finnkino : System.Web.UI.Page
{
    XmlDocument doc = new XmlDocument();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                doc.Load("http://www.finnkino.fi/xml/TheatreAreas/");
                XmlNodeList theatreNodes = doc.SelectNodes("TheatreAreas/TheatreArea");
                foreach (XmlNode node in theatreNodes)
                {
                    lbTheatres.Items.Add(new ListItem(node["Name"].InnerText, node["ID"].InnerText));
                }
            }
            catch (Exception ex)
            {
                lblMessages.Text = ex.Message;
            }

        }
    }

    protected void lbTheatres_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMessages.Text = "Current movies in " + lbTheatres.SelectedItem.Text + ".";
        GetMovieImages();
    }

    protected void GetMovieImages()
    {
        string areaID = lbTheatres.SelectedValue;
        doc.Load("http://www.finnkino.fi/xml/Schedule/?area=" + areaID + "&dt=" + DateTime.Today.ToString("dd.MM.yyyy"));
        XmlNodeList imageNodes = doc.SelectNodes("/Schedule/Shows/Show/Images/EventLargeImagePortrait");
        foreach (XmlNode node in imageNodes)
        {
            HtmlGenericControl movieDiv = (HtmlGenericControl)FindControl("movieDiv");
            HtmlGenericControl img = new HtmlGenericControl("img");
            img.Attributes["src"] = node.InnerText;
            movieDiv.Controls.Add(img);
        }
    }
}