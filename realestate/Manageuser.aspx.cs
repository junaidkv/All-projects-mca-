using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Manageuser : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("delete FROM user1 where username='" + GridView1.DataKeys[e.RowIndex].Value + "'", conn);
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
        string username = (GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //Label lblID = (Label)row.FindControl("lblID");
        //TextBox username = (TextBox)row.Cells[0].Controls[0];
        TextBox pwd = (TextBox)row.Cells[1].Controls[0];
        TextBox fn = (TextBox)row.Cells[2].Controls[0];
        TextBox ln = (TextBox)row.Cells[3].Controls[0];
        TextBox email = (TextBox)row.Cells[4].Controls[0];
        TextBox phone = (TextBox)row.Cells[5].Controls[0];
        TextBox usertype = (TextBox)row.Cells[6].Controls[0];
        TextBox city = (TextBox)row.Cells[7].Controls[0];
        GridView1.EditIndex = -1;
        conn.Open();
        SqlCommand cmd = new SqlCommand("update user1 set pwd='" + pwd.Text + "',fn='" + fn.Text + "',ln='" + ln.Text + "',email='" + email.Text + "',phone='" + phone.Text + "',usertype='" + usertype.Text + "',city='" + city.Text + "'where username='" + username + "'", conn);
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