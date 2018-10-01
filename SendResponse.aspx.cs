using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

public partial class SendResponse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbltime.Text = DateTime.Now.ToLongTimeString();
        lbldate.Text = DateTime.Now.ToLongDateString();
        if (!IsPostBack == true)
        {
            lbluser.Text = Session["new"].ToString();
        }
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        conn.Open();
        String insertQuery = "insert into EasyRechargeComment(UserName,Date,Time,EasyRecharge) values(@username,@date,@time,@comment)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);

        cmd.Parameters.AddWithValue("@username", DropDownList1.Text);
         cmd.Parameters.AddWithValue("@date", lbldate.Text);
        cmd.Parameters.AddWithValue("@time", lbltime.Text);
        cmd.Parameters.AddWithValue("@comment", txtsend.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Message is Send Sucessfull')</script>");﻿
        conn.Close();
                txtsend.Text = "";
                Server.Transfer("SendResponse.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("datauser.aspx"); 
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("rechargehistorydata.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdmindthRecharge.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("admindatacard.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("SendResponse.aspx");
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Home_Page.aspx");
    }
}