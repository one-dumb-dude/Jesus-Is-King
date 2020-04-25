using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class aspx_Testimonies : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillData();
        }
    }

    private void fillData()
    {
        DataSourceSelectArguments args = new DataSourceSelectArguments();
        DataView view = (DataView)JesusIsKingDatabase.Select(args);
        DataTable dt = view.ToTable();

        PagedDataSource page = new PagedDataSource();
        page.DataSource = view;
        page.AllowPaging = true;
        page.PageSize = 7;
        page.CurrentPageIndex = PageNumber;

        Repeater1.DataSource = page;
        Repeater1.DataBind();

        if (page.PageCount > 1)
        {
            RepeaterPage.Visible = true;
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < page.PageCount; i++)
            {
                arraylist.Add((i + 1).ToString());
            }

            RepeaterPage.DataSource = arraylist;
            RepeaterPage.DataBind();
        }
        else
        {
            RepeaterPage.Visible = false;
        }

    }

    protected void Submit_Comment_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            try
            {
                TextBox fname_textBox = (TextBox)LoginView1.FindControl("fname_Textbox");
                TextBox lname_textBox = (TextBox)LoginView1.FindControl("lname_Textbox");
                TextBox email_textBox = (TextBox)LoginView1.FindControl("email_Textbox");
                TextBox comment_textBox = (TextBox)LoginView1.FindControl("comment_Textbox");

                using (SqlConnection connection = new SqlConnection(@"Data Source=192.168.1.2;Initial Catalog=JesusIsKing;User ID=JesusKingsvr1;Password=***********"))
                {
                    using (SqlCommand command = new SqlCommand("dbo.uspInsertComment", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@fname", SqlDbType.NVarChar).Value = fname_textBox.Text;
                        command.Parameters.Add("@lname", SqlDbType.NVarChar).Value = lname_textBox.Text;
                        command.Parameters.Add("@email", SqlDbType.NVarChar).Value = email_textBox.Text;
                        command.Parameters.Add("@comment_txt", SqlDbType.NVarChar).Value = comment_textBox.Text;

                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        fillData();

                        fname_textBox.Text = "";
                        lname_textBox.Text = "";
                        email_textBox.Text = "";
                        comment_textBox.Text = "";

                    }
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('That email already exists');</script>");
            }

        }
    }

    protected void submit_Comment_Loggedin_Click(object sender, EventArgs e)
    {
        if(IsValid)
        {
            try
            {
                Response.Write("<script>alert('You posted');</script>");
            }

            catch (Exception)
            {
                Response.Write("<script>alert('That email already exists');</script>");
            }
        }
    }

    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
                return Convert.ToInt32(ViewState["PageNumber"]);
            else
                return 0;
        }
        set
        {
            ViewState["PageNumber"] = value;
        }
    }

   

    protected void RepeaterPage_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1 ;
        fillData();
    }

}