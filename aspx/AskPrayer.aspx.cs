using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx_AskPrayer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        fnameInput.Text = fnameInput.Text.ToLower();
        lnameInput.Text = lnameInput.Text.ToLower();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}