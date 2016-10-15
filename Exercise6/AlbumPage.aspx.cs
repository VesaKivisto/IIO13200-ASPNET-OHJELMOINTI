using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class AlbumPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string isbn = Request.QueryString["isbn"];
        albumImg.Attributes["src"] = "Images/" + isbn + ".jpg";
        XmlDocument doc = new XmlDocument();
        doc.Load(MapPath("/App_Data/LevykauppaX.xml"));
        XmlNodeList albumInfo = doc.SelectNodes(string.Format("/Records/genre/record[@ISBN='{0}']", isbn));

        foreach (XmlNode node in albumInfo)
        {
            albumName.InnerHtml = node.Attributes["Artist"].Value + " - " + node.Attributes["Title"].Value;
            lblISBN.Text = node.Attributes["ISBN"].Value;
            lblPrice.Text = node.Attributes["Price"].Value;
            foreach (XmlNode child in node.ChildNodes)
            {
                divSongs.InnerHtml += child.Attributes["name"].Value + "<br />";
            }
        }
    }
}