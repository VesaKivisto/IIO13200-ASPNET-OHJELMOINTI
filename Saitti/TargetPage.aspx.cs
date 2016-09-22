using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TargetPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string msg = "";
        //V1 Query String
        msg += "<h3>Query</h3>";
        msg += "Message received: " + Request.QueryString["Message"];
        msg += "<br />";
        //RequestQueryString is a loopable collection
        foreach (string key in Request.QueryString)
        {
            msg += "Key " + key + " found in URL with a value " + Request.QueryString[key] + "<br />";
        }
        //Show result in HTML
        lblMessage.Text = msg;
        //V2 Session
        msg += "<h3>Session</h3>";
        msg += "Message received from session: " + Session["Message"] + "<br />";
        //Show result in HTML
        lblMessage.Text = msg;
        //V3 Cookie
        msg += "<h3>Cookie</h3>";
        //Check if cookie exists
        foreach (string key in Request.Cookies)
        {
            if (key == "Message")
            {
                msg += "Message found with text " + Request.Cookies[key].Value + "<br />";
            }
        }
        //Show result in HTML
        lblMessage.Text = msg;
        //V3 Read Property from previous site
        msg += "<h3>Property</h3>";
        var previousPage = PreviousPage;
        if (previousPage != null)
        {
            msg += "Property from previous site is: " + previousPage.SecretMessage + "<br />";
        }
        //Show result in HTML
        lblMessage.Text = msg;
    }
}