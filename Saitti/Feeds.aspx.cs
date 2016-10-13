using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Feeds : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetFeedsIS_Click(object sender, EventArgs e)
    {
        //XmlDataSource gets data from Ilta-Sanomat
        string url = @"http://www.iltasanomat.fi/rss/tuoreimmat.xml";
        myDataSource.DataFile = url;
        GetFeeds();
    }

    private void GetFeeds()
    {
        try
        {
            //Use XmlDocument class
            XmlDocument doc = new XmlDocument();
            doc = myDataSource.GetXmlDocument();
            //Channel data
            XmlNode node1 = doc.SelectSingleNode("/rss/channel");
            string title = node1["title"].InnerText;
            myDiv.InnerHtml = string.Format("<h1>{0} {1}</h1>", title, DateTime.Now.ToShortDateString());
            //Item elements in loop
            string cat;
            string link;
            XmlNodeList nodes = doc.SelectNodes("/rss/channel/item");
            foreach (XmlNode node in nodes)
            {
                cat = node["category"].InnerText;
                title = node["title"].InnerText;
                link = node["link"].InnerText;
                myDiv.InnerHtml += string.Format("{0} <a href='{1}'>{2}</a><br/>", cat, link, title);
            }
        }
        catch (Exception ex)
        {
            myDiv.InnerHtml = ex.Message;
        }
    }

    protected void btnGetFeedsYle_Click(object sender, EventArgs e)
    {
        //XmlDataSource gets data from Ilta-Sanomat
        string url = @"http://feeds.yle.fi/uutiset/v1/majorHeadlines/YLE_UUTISET.rss";
        myDataSource.DataFile = url;
        GetFeeds();
    }
}