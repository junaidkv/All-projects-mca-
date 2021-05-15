using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    db_operator db = new db_operator();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "select * from login where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'";
        DataTable dt = new DataTable();
        dt = db.DataReturn(qry);
        if (dt.Rows.Count > 0)
        {
            DataRow dr = dt.Rows[0];
            Session["login_id"] = dr["login_id"].ToString();
            if (dr["user_type"].ToString() == "admin")
            {
                Response.Redirect("admin_home.aspx");
            }
            else if (dr["user_type"].ToString() == "hospital")
            {
                Response.Redirect("hospital_home.aspx");
            }
            else if (dr["user_type"].ToString() == "user")
            {
                Response.Redirect("user_home.aspx");
            }
            else if (dr["user_type"].ToString() == "Pending")
            {
                Response.Write("<script>alert('Not approved..Wait for the approval !!!');window.location='public_login.aspx'</script>");

            }
            else if (dr["user_type"].ToString() == "Rejected")
            {
                Response.Write("<script>alert('Rejected !!!');window.location='public_login.aspx'</script>");

            }
        }
    }
}