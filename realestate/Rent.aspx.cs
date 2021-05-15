using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Rent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["utype"] != "client")
            Response.Redirect("Login.aspx");
        if(Session["uid"]==null)
            Response.Redirect("Login.aspx");
    }
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            String sql = "";
            int s;
            if (ddlconstruction.SelectedIndex != 0)
                sql = sql + "construction='" + ddlconstruction.SelectedValue + "' and ";
            if (ddlsize.SelectedIndex != 0)
            {
                s = ddlsize.SelectedIndex;
                switch (s)
                {
                    case 1:
                        sql = sql + "(size between 500 and 600) and "; break;
                    case 2:
                        sql = sql + "(size between 601 and 700) and "; break;
                    case 3:
                        sql = sql + "(size between 701 and 800) and "; break;
                    case 4:
                        sql = sql + "(size between 801 and 900) and "; break;
                    case 5:
                        sql = sql + "(size between 901 and 1000) and "; break;
                    case 6:
                        sql = sql + "(size between 1001 and 1100) and "; break;

                }
            }
            if (ddlprice.SelectedIndex != 0)
            {
                s = ddlprice.SelectedIndex;
                switch (s)
                {
                    case 1:
                        sql = sql + "(approxprice between 100000 and 1000000) and "; break;
                    case 2:
                        sql = sql + "(approxprice between 1000000 and 2000000) and "; break;
                    case 3:
                        sql = sql + "(approxprice between 2000000 and 3000000) and "; break;
                    case 4:
                        sql = sql + "(approxprice between 3000000 and 4000000) and "; break;
                    case 5:
                        sql = sql + "(approxprice between 4000000 and 5000000) and "; break;
                    case 6:
                        sql = sql + "(approxprice between 5000000 and 6000000) and "; break;
                    case 7:
                        sql = sql + "(approxprice between 6000000 and 7000000) and "; break;
                    case 8:
                        sql = sql + "(approxprice between 7000000 and 8000000) and "; break;
                    case 9:
                        sql = sql + "(approxprice between 8000000 and 9000000) and "; break;
                    case 10:
                        sql = sql + "(approxprice between 9000000 and 10000000) and "; break;
                    case 11:
                        sql = sql + "(approxprice between 10000000 and 20000000) and "; break;
                }
            }
            sql = sql + "area='" + ddlarea.SelectedValue + "'";
            //    SqlCommand cmd = new SqlCommand("select * from property where " + sql, con);


            SqlDataSource2.SelectCommand = "select * from property where type='rent' and " + sql;
            SqlDataSource2.DataBind();
            DataList1.DataBind();
            if (DataList1.Items.Count == 0)
            {
                String message = "No result found";
                Response.Write("<script type = 'text/javascript'>" + "window.onload=function(){" + "alert('" + message + "')};" + "</script>");
            }
                con.Close();
        }
        catch (SqlException se)
        {
            Response.Write(se);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "wish")
        {
            string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("property_idLabel")).Text;
            string status = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("sales_statusLabel")).Text;
            string name = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("unameLabel")).Text;
            // Response.Write(id+status+name);
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into wish(pid,powner,sstatus,uname) values(" + id + ",'" + name + "','" + status + "','" + Session["uid"].ToString() + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException se)
            {
                Response.Write("<script type = 'text/javascript'>" + "window.onload=function(){" + "alert('Property already added to cart')};" + "</script>");
            }
        }
        else
        {
            /*                                                                      */
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            Session["property_id"] = commandArgs[0];
            Session["uname"] = commandArgs[1];
            Response.Redirect("pview.aspx");
        }
    }
}