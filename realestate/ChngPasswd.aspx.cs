using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ChngPasswd : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("Login.aspx");
    }

    protected void ChangePasswordPushButton_Click1(object sender, EventArgs e)
    {
        cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());
        string opwd = txtOPwd.Text;
        string npwd = txtNPwd.Text;
        string unm = Session["uid"].ToString();
        cn.Open();
        if (unm.CompareTo("Admin") == 0)
        {
            cmd = new SqlCommand("Select * From Admin Where username='" + unm + "' And password='" + opwd + "'", cn);
        }
        else
        {
            cmd = new SqlCommand("Select * From user1 Where username='" + unm + "' And pwd='" + opwd + "'", cn);
        }
        dr = cmd.ExecuteReader();
        if (dr.HasRows == false)
        {
            dr.Close();
            cn.Close();
            lblInvalid.Text = "Invalid Old Password";
            lblInvalid.ForeColor = System.Drawing.Color.Red;
            txtOPwd.Focus();
        }
        else if (Session["uid"].ToString().CompareTo("Admin") == 0)
        {
            dr.Close();
            cmd = new SqlCommand("Update Admin Set password='" + npwd + "' Where username='" + unm + "'", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Login.aspx");
        }
        else
        {
            dr.Close();
            cmd = new SqlCommand("Update user1 Set pwd='" + npwd + "' Where username='" + unm + "'", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Login.aspx");
        }
    }
    protected void CancelPushButton_Click(object sender, EventArgs e)
    {
        lblInvalid.Visible = false;
    }
}