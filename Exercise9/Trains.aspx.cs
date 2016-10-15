using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Net;
using System.Text;
using JAMK.IT;
using System.Data;

public partial class Trains : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitStations();   
        }
    }

    protected void InitStations()
    {
        try
        {
            string json = GetJsonData("http://rata.digitraffic.fi/api/v1/metadata/stations");
            List<Station> stationData = JsonConvert.DeserializeObject<List<Station>>(json);
            List<string> stationList = new List<string>();
            foreach (var station in stationData)
            {
                ddStations.Items.Add(new ListItem(station.stationName, station.stationShortCode));
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }

    protected void btnGetTrains_Click(object sender, EventArgs e)
    {
        
        try
        {
            string json = GetJsonData("http://rata.digitraffic.fi/api/v1/live-trains?station=" + ddStations.SelectedValue.ToString());
            List<Train> trains = JsonConvert.DeserializeObject<List<Train>>(json);
            if (trains.Count == 0)
            {
                lblMessage.Text = "No trains found.";
            }
            else
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Junan nro", typeof(string));
                dt.Columns.Add("Peruutettu", typeof(bool));
                dt.Columns.Add("Pvm", typeof(string));
                foreach (var train in trains)
                {
                    dt.Rows.Add(train.trainNumber, train.cancelled, train.departureDate);
                }
                lblMessage.Text = "Found " + trains.Count + " trains.";
                gvTrains.DataSource = dt;
                gvTrains.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }

    protected string GetJsonData(string url)
    {
        using (WebClient client = new WebClient())
        {
            client.Encoding = Encoding.UTF8;
            string jsonData = client.DownloadString(url);
            return jsonData;
        }
    }
}