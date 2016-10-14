using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class EmployeesSalary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CalculateSalary();
    }

    protected void CalculateSalary()
    {
        float sum = 0;
        int count = 0;
        XmlDocument doc = new XmlDocument();
        //doc = srcWorkers.GetXmlDocument();
        doc.Load(MapPath("/App_Data/Työntekijät2013.xml"));
        //haetaan tyontekija-elementit
        //XmlNodeList nodes = doc.SelectNodes("/tyontekijat/tyontekija[tyosuhde = 'vakituinen']/palkka");
        XmlNodeList nodes = doc.SelectNodes("/tyontekijat/tyontekija[tyosuhde = 'vakituinen']");
        count = nodes.Count;
        foreach (XmlNode item in nodes)
        {
            sum += float.Parse(item["palkka"].InnerText);
        }
        //tulos ulos
        myDiv.InnerHtml = string.Format("vakituisia {0} palkat yhteensä {1}", count, sum);
    }
}