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
    public static string id,amount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            cmd.CommandText = "select * from messbill where pay_status='Pending' and  student_id=(select student_id from student where login_id='" + Session["logid"] + "')";
            dt = con.data_return(cmd);
            if (dt.Rows.Count > 0)
            {
                DataGrid1.DataSource = dt;
                DataGrid1.DataBind();
            }
            else
            {
                Label1.Text = "No details";
            }
        }
    }

    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        amount = e.Item.Cells[3].Text;
        if (e.CommandName == "p")
        {
            MultiView1.SetActiveView(View2);
            TextBox1.Text = amount;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into payment values((select student_id from student where login_id='" + Session["logid"] + "'),'" + amount + "','mess bill','" + System.DateTime.Now.ToShortDateString() + "')";
        con.data_nonreturn(cmd);

        cmd.CommandText = "update messbill set pay_status='Paid' where student_id=(select student_id from student where login_id='" + Session["logid"] + "')";
        con.data_nonreturn(cmd);

        Response.Write("<script>alert('Paid Successfully');window.location='StudViewMessbill.aspx'</script>");
 
      
    }
}