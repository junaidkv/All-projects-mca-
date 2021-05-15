using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    db_operator db = new db_operator();
    public static string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            DataGrid1.DataSource = db.DataReturn("select *  from hospital");
            DataGrid1.DataBind();
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "su")
        {
            MultiView1.SetActiveView(View2);
            DataGrid2.DataSource = db.DataReturn("select * from surgeons where hospital_id='"+id+"'");
            DataGrid2.DataBind();
        }
        if (e.CommandName == "sr")
        {
            MultiView1.SetActiveView(View3);
            DataGrid3.DataSource = db.DataReturn("select surgeries.*,surgery_category.*,surgeons.first_name+' '+surgeons.last_name as sname from surgeries inner join surgery_category on.surgeries.category_id=surgery_category.category_id inner join surgeons on surgeons.surgeon_id=surgeries.surgeon_id where surgeries.hospital_id='" + id + "'");
            DataGrid3.DataBind();
        }
    }
}