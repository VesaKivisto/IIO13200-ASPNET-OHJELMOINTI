using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowCustomers : System.Web.UI.Page
{
    protected static CustomerEntities entities;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            entities = new CustomerEntities();
            InitCountries();
        }
    }
    protected void btnGetAllCustomers_Click(object sender, EventArgs e)
    {
        GetAllCustomers();
    }

    protected void btnGetCustomersFromCountry_Click(object sender, EventArgs e)
    {
        GetCustomersFromCountry();
    }

    protected void btnListCustomersByCountry_Click(object sender, EventArgs e)
    {
        GetCustomersBasedOnCountry();
    }
    protected void InitCountries()
    {
        try
        {
            var countryCodes = entities.asiakas.Select(x => new { maa = x.maa }).OrderBy(x => x.maa).Distinct();
            ddCountries.DataSource = countryCodes.ToList();
            ddCountries.DataTextField = "maa";
            ddCountries.DataBind();
            ddCountries.Items.Insert(0, string.Empty);
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }

    protected void GetAllCustomers()
    {
        try
        {
            gvCustomers.DataSource = entities.asiakas.ToList();
            gvCustomers.DataBind();
            lblMessages.Text = string.Format("Found {0} customer(s)", entities.asiakas.Count());
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }

    protected void GetCustomersFromCountry()
    {
        try
        {
            var customers = from c in entities.asiakas
                            where c.maa == ddCountries.Text
                            select c;
            gvCustomers.DataSource = customers.ToList();
            gvCustomers.DataBind();
            lblMessages.Text = string.Format("Found {0} customer(s)", customers.Count());
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }

    protected void GetCustomersBasedOnCountry()
    {
        try
        {
            var customers = from c in entities.asiakas
                            orderby c.maa
                            select c;
            var countryCodes = from c in entities.asiakas
                               select c.maa;
            List<asiakas> customerList = customers.ToList();
            List<string> countryCodeList = countryCodes.Distinct().ToList();
            customersByCountry.InnerHtml = "";
            foreach (var code in countryCodeList)
            {
                customersByCountry.InnerHtml += "<h2 style='color:green;'>" + code + "</h2>";
                foreach (var customer in customerList)
                {
                    if (customer.maa == code)
                    {
                        customersByCountry.InnerHtml += "<p style='color: blue;font-weight:bold;line-height:5px;'>" + customer.asnimi + "</p>";
                    }
                }
            }
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }
}