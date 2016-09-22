using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SourcePage : System.Web.UI.Page
{
    public string SecretMessage
    {
        get
        {
            return txtMessage.Text;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlMessages.Items.Add("Hello.");
            ddlMessages.Items.Add("Ping?");
            ddlMessages.Items.Add("Pong!");
            ddlMessages.Items.Add("Handshake.");
            ddlMessages.Items.Add("Goodbye!");
        }
    }

    protected void btnQuery_Click(object sender, EventArgs e)
    {
        //We will use standard redirection with Redirect
        Response.Redirect("TargetPage.aspx?User=Vesa&Message=" + txtMessage.Text);
    }

    protected void btnSession_Click(object sender, EventArgs e)
    {
        //Write to session and redirect
        Session["Message"] = txtMessage.Text;
        Response.Redirect("TargetPage.aspx");
    }

    protected void btnCookie_Click(object sender, EventArgs e)
    {
        //Create cookie and set the message to it
        HttpCookie cookie = new HttpCookie("Message", txtMessage.Text);
        cookie.Expires = DateTime.Now.AddMinutes(15);
        Response.Cookies.Add(cookie);
    }

    protected void btnPublicProperty_Click(object sender, EventArgs e)
    {
        //Redirect
        Server.Transfer("TargetPage.aspx");
    }

    protected void ddlMessages_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Set selected item from drop down list to textbox
        txtMessage.Text = ddlMessages.SelectedItem.Text;
    }
}