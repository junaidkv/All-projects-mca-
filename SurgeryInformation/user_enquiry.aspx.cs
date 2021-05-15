using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    db_operator db = new db_operator();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
        DataGrid1.DataSource = db.DataReturn("select enquiry_id as ID, name as HOSPITAL, description as ENQUIRY, reply as REPLY, enquiry_date as DATE from enquiries inner join hospital on enquiries.hospital_id = hospital.hospital_id where enquiries.user_id = " + Session["user_id"].ToString());
        DataGrid1.DataBind();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        DropDownList1.DataSource = db.DataReturn("select * from hospital");
        DropDownList1.DataValueField = "hospital_id";
        DropDownList1.DataTextField = "name";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "insert into enquiries (user_id, hospital_id, description, reply, enquiry_date) values (" + Session["user_id"].ToString() + ", " + DropDownList1.SelectedValue + ", '" + TextBox8.Text + "', 'Pending', '" + System.DateTime.Now.ToShortDateString() + "')";
        db.DataNonReturn(qry);
        Response.Write("<script>alert('Enquiry sent successfully')</script>");
        Response.Write("<script>window.location='user_enquiry.aspx'</script>");

    }
}