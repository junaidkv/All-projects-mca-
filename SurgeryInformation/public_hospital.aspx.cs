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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "insert into login (username, password, user_type) values('" + TextBox8.Text + "', '" + TextBox9.Text + "', 'Pending')";
        db.DataNonReturn(qry);

        string str = "insert into hospital (login_id, name, phone, email, place, pincode, district) values ((select MAX(login_id) from login), '" + TextBox1.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "')";
        db.DataNonReturn(str);

        Response.Write("<script>alert('Hospital Registered successfully')</script>");
        Response.Write("<script>window.location='public_login.aspx'</script>");
    }
}