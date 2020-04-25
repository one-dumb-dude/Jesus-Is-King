 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_HeadOfPage : System.Web.UI.UserControl
{
    protected string Loggin;

    public static string thisPageTitle(string pageTitle)
    {
        Page thisPage = new Page();

        thisPage.Title = pageTitle;

        return thisPage.Title;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            Loggin = "Welcome ";
        }
        else
        {
            Loggin = "Welcome to Lord Jesus Is King!";
        }

        DataBind();

    }
}