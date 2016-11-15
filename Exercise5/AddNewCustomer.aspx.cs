using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNewCustomer : System.Web.UI.Page
{
    protected static CustomerEntities entities;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            entities = new CustomerEntities();
        }
    }

    protected void btnAddNewCustomer_Click(object sender, EventArgs e)
    {
        try
        {
            asiakas customer = new asiakas();
            customer.astunnus = txtID.Text;
            customer.asnimi = txtName.Text;
            customer.yhteyshlo = txtContact.Text;
            customer.maa = txtCountryCode.Text;
            customer.postinro = txtPostalCode.Text;
            customer.postitmp = txtPostOffice.Text;
            customer.ostot = double.Parse(txtPurchases.Text);
            customer.asvuosi = short.Parse(txtYear.Text);
            entities.asiakas.Add(customer);
            entities.SaveChanges();
            lblMessage.Text = "Customer added succesfully!";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}