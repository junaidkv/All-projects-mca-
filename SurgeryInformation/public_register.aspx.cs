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
        string qry = "insert into login (username, password, user_type) values('" + TextBox8.Text + "', '" + TextBox9.Text + "', 'user')";
        db.DataNonReturn(qry);
        string gender = "";
        if (RadioButton1.Checked)
        {
            gender = "Male";
        }
        else if (RadioButton2.Checked)
        {
            gender = "Female";
        }
        string str = "insert into users (login_id, first_name, last_name, phone, email, place, pincode, gender, dob) values ((select MAX(login_id) from login), '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + gender + "', '" + TextBox7.Text + "')";
        db.DataNonReturn(str);

        Response.Write("<script>alert('Registered successfully')</script>");
        Response.Write("<script>window.location='public_login.aspx'</script>");
    }
}