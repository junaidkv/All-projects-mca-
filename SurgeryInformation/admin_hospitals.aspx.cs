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
            DataGrid1.DataSource = db.DataReturn("select *  from hospital inner join login on hospital.login_id=login.login_id");
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
            DataGrid3.DataSource = db.DataReturn("select * from surgeries inner join surgery_category on.surgeries.category_id=surgery_category.category_id where hospital_id='" + id + "'");
            DataGrid3.DataBind();
        }
        if (e.CommandName == "a")
        {
            string qry = "update login set user_type='hospital' where login_id='" +e.Item.Cells[1].Text + "'";
            db.DataNonReturn(qry);

            Response.Write("<script>alert('Approved Successfully !!!');window.location='admin_hospitals.aspx'</script>");
      
        }
        if (e.CommandName == "r")
        {
            string qry = "update login set user_type='Rejected' where login_id='" + e.Item.Cells[1].Text + "'";
            db.DataNonReturn(qry);

            Response.Write("<script>alert('Rejected Successfully !!!');window.location='admin_hospitals.aspx'</script>");

        }
    }
}