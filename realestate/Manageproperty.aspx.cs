using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Manageproperty : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void gvbind()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from user1", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            //GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //Label lbldeleteid = (Label)row.FindControl("lblID");
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("delete FROM wish where pid='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd = new SqlCommand("delete FROM property where property_id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        gvbind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gvbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int property_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //Label lblID = (Label)row.FindControl("lblID");
        TextBox uname = (TextBox)row.Cells[1].Controls[0];
        TextBox area = (TextBox)row.Cells[2].Controls[0];
        TextBox address = (TextBox)row.Cells[3].Controls[0];
        TextBox type = (TextBox)row.Cells[4].Controls[0];
        TextBox construction = (TextBox)row.Cells[5].Controls[0];
        TextBox size = (TextBox)row.Cells[6].Controls[0];
        TextBox approxprice = (TextBox)row.Cells[7].Controls[0];
        TextBox entrydate = (TextBox)row.Cells[8].Controls[0];
        TextBox sales_status = (TextBox)row.Cells[9].Controls[0];
        //TextBox image1 = (TextBox)row.Cells[10].Controls[0];
        GridView1.EditIndex = -1;
        conn.Open();
        SqlCommand cmd = new SqlCommand("update property set uname='" + uname.Text + "',area='" + area.Text + "',address='" + address.Text + "',type='" + type.Text + "',construction='" + construction.Text + "',size='" + size.Text + "',approxprice='" + approxprice.Text + "',entrydate='" + entrydate.Text + "',sales_status='" + sales_status.Text + "'where property_id='" + property_id + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        gvbind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gvbind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gvbind();
    }
}