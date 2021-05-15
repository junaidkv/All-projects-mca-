using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string unm = txtUName.Text;
        string pwd = txtPwd.Text;
        int flg = 0;
        cn.Open();
        cmd = new SqlCommand("Select * From user1 Where username='" + unm + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Read();

            Session["uid"] = unm;
            if (dr["Pwd"].ToString().CompareTo(pwd) != 0)
                flg = 2;
        }
        else
            flg = 1;

        if (flg == 0)
        {
            if (dr["usertype"].ToString().CompareTo("0") != 0)
            {
                Session["utype"] = "agent";
                Response.Redirect("Sell.aspx");
            }
            else
            {
                Session["utype"] = "client";
                Response.Redirect("Main.aspx");
            }
        }
        else if (flg == 1)
        {
            lblInvalid.Text = "Invalid User Name";
            txtUName.Focus();
        }
        else
        {
            lblInvalid.Text = "Invalid Password";
            txtPwd.Focus();
        }
        lblInvalid.ForeColor = System.Drawing.Color.Red;
        Session.Remove("uid");
        dr.Close();
        cn.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string Aunm = txtAUName.Text;
        string Apwd = txtAPwd.Text;
        int flg = 0;
        cn.Open();
        cmd = new SqlCommand("Select * From Admin Where username='" + Aunm + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Read();

            Session["username"] = Aunm;
            if (dr["password"].ToString().CompareTo(Apwd) != 0)
                flg = 2;
        }
        else
            flg = 1;

        if (flg == 0)
        {
            Response.Redirect("Admin.aspx");

        }
        else if (flg == 1)
        {
            lblAInvalid.Text = "Invalid Admin";
            txtAUName.Focus();
        }
        else
        {
            lblAInvalid.Text = "Invalid Password";
            txtPwd.Focus();
        }
        lblAInvalid.ForeColor = System.Drawing.Color.Red;
        Session.Remove("uid");

    }
}