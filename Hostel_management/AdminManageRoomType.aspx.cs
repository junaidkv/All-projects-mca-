using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    ConnectionClass1 con = new ConnectionClass1();
    DataTable dt = new DataTable();
    public static string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from roomtypes";
        dt = con.data_return(cmd);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        MultiView1.SetActiveView(View1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from roomtypes where type_name='" + DropDownList1.SelectedItem.ToString() + "'";
        dt = con.data_return(cmd);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Already added...');window.location='AdminManageRoomType.aspx'</script>");
 
        }
        else
        {
            cmd.CommandText = "insert into roomtypes values('" + DropDownList1.SelectedItem.ToString() + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString() + "')";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManageRoomType.aspx");
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "d")
        {
            cmd.CommandText ="delete from roomtypes where type_id='"+id+"'";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManageRoomType.aspx");
        }
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox3.Text = e.Item.Cells[1].Text;
            TextBox1.Text = e.Item.Cells[2].Text;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "update roomtypes set type_desc='" + TextBox1.Text + "' where type_id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Write("<script>alert('Updated Successfully');window.location='AdminManageRoomType.aspx'</script>");
 
    }
}