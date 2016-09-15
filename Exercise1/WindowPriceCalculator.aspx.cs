using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WindowPriceCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        try
        {
            lblError.Text = "";
            //Convert mm to meters
            double windowWidth = double.Parse(txtWindowWidth.Text) / 1000;
            double windowHeight = double.Parse(txtWindowHeight.Text) / 1000;
            double frameWidth = double.Parse(txtFrameWidth.Text) / 1000;
            txtArea.Text = CalculateWindowArea(windowWidth, windowHeight, frameWidth).ToString();
            txtPerimeter.Text = CalculatePerimeter(windowWidth, windowHeight).ToString();
            txtCost.Text = CalculateCosts(windowWidth, windowHeight, frameWidth).ToString();
        }
        catch (Exception)
        {
            lblError.Text = "Check your fields.";
            txtArea.Text = "";
            txtPerimeter.Text = "";
            txtCost.Text = "";
        }
    }

    private double CalculateWindowArea(double width, double height, double frame)
    {
        double area = width * height;
        return area;
    }

    private double CalculatePerimeter(double width, double height)
    {
        double perimeter = 2 * width + 2 * height;
        return perimeter;
    }

    private double CalculateCosts(double width, double height, double frame)
    {
        double salesMargin = double.Parse(ConfigurationManager.AppSettings["salesMargin"]);
        double squarePrice = double.Parse(ConfigurationManager.AppSettings["squarePrice"]);
        double framePrice = double.Parse(ConfigurationManager.AppSettings["framePrice"]);
        double workCost = double.Parse(ConfigurationManager.AppSettings["workCost"]);
        double windowCost = CalculateWindowArea(width, height, frame) * squarePrice;
        double frameCost = CalculatePerimeter(width, height) * framePrice;
        double costs = (1 + salesMargin) * (windowCost + frameCost + workCost);
        return costs;
    }    
}