using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addwamount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["new"] != null)
            {

                lbluser.Text = Session["new"].ToString();
                lbluser.Visible = true;
                lblwelcome.Visible = true;
                btnlogout.Visible = true;
                wallamount.Visible = true;
                lblwallet.Visible = true;
                rs.Visible = true;

            }

        }
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //delete the addmount table
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        conn1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from addamount where User_Name='" + lbluser.Text + "'", conn1);
        cmd1.ExecuteNonQuery();
        conn1.Close();
        //delete the rech1 table

        //insert value in addamount table
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        conn.Open();
        String insertQuery = "insert into addamount(User_Name,Amount,Paymentoption,Bank,Cardtype) values(@username,@amu,@pay,@bank,@tcard)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@username", lbluser.Text);
        cmd.Parameters.AddWithValue("@amu", txtamount.Text);
        cmd.Parameters.AddWithValue("@pay", ddlpayment.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@bank", ddlbank.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@tcard", ddlcardtype.SelectedItem.ToString());
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Done')</script>");﻿
         Server.Transfer("addamoupayment.aspx");
                 conn.Close();
                
            
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditUserData.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recharge.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("DTHRecharge.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataCardRecharge.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserQuery.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Changepassaspx.aspx");
    }
    protected void lbphonebook_Click(object sender, EventArgs e)
    {
        Response.Redirect("phonebook.aspx");
    }
    protected void lbaddmoney_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addwamount.aspx");
    }
}