using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lotto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDraw_Click(object sender, EventArgs e)
    {
        try
        {
            lblMessages.Text = "";
            int numbersToDraw = (drpLottoType.Text == "Lotto") ? 7 : 6;
            int largestValue = (drpLottoType.Text == "Lotto") ? 39 : 48;
            BLLotto lotto = new BLLotto();
            if (int.Parse(txtRows.Text) > 0)
            {
                for (int i = 0; i < int.Parse(txtRows.Text); i++)
                {
                    lblMessages.Text += string.Join(", ", lotto.DrawLotto(numbersToDraw, largestValue)) + "<br />";
                }
            }
            else
            {
                lblMessages.Text = "Rows to draw must be greater than 0.";
            }
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }
}