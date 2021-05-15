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
        MultiView1.SetActiveView(View1);
        DataGrid1.DataSource = db.DataReturn("select enquiry_id as ID, (first_name +' '+last_name) as NAME, description as ENQUIRY, reply as REPLY, enquiry_date as DATE from enquiries inner join users on users.user_id = enquiries.user_id where enquiries.reply='Pending' and enquiries.hospital_id = " + Session["hospital_id"].ToString());
        DataGrid1.DataBind();
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[1].Text;
        if (e.CommandName == "r")
        {
            MultiView1.SetActiveView(View2);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "update enquiries set reply='"+TextBox1.Text+"' where enquiry_id='"+id+"'";
        db.DataNonReturn(qry);
        Response.Write("<script>alert('Reply added successfully')</script>");
        Response.Write("<script>window.location='hospital_enquiry.aspx'</script>");
    }
}