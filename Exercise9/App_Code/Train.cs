using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Train
/// </summary>
namespace JAMK.IT
{
    public class Train
    {
        public Train()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public string trainNumber { get; set; }
        public string cancelled { get; set; }
        public string departureDate { get; set; }
    }

    public class Station
    {
        public Station()
        {

        }
        public string stationShortCode { get; set; }
        public string stationName { get; set; }
    }
}