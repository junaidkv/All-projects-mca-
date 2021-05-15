using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Wishlist : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
            string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("pidLabel")).Text;
            string name = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("pownerLabel")).Text;
            Session["property_id"] = id;
            Session["uname"] = name;
            Response.Redirect("pview.aspx");
    }
}