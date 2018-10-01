using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

public partial class Recharge : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //User login display there name on top of page
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
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);

            SqlCommand com1;
            String str1;
            conn.Open();
            str1 = "select * from UserData where User_Name='" + lbluser.Text + "'";
            com1 = new SqlCommand(str1, conn);
            SqlDataReader reader1 = com1.ExecuteReader();
            if (reader1.Read())
            {
                lblwallet.Text = reader1["EasyWallet"].ToString();

                reader1.Close();
                conn.Close();

            }
            
        }
        lblphone1.Text = lbluser.Text;

        if (ddlservicetype.SelectedIndex == 1)
        {
            Server.Transfer("Recharge.aspx");
        }
        if (ddlservicetype.SelectedIndex == 2)
        {
            Server.Transfer("DTHRecharge.aspx");
        }
        if (ddlservicetype.SelectedIndex == 3)
        {
            Server.Transfer("DataCardRecharge.aspx");
        }
    }

       //logout butto
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://bajajfinserv.in/finance/personal-loan/salaried-personal-loan-for-home-improvement.aspx?utm_source=Paid&utm_medium=RTB_PL_336x280&utm_campaign=Logicserve_RTB_Dec_Generic_banner&reference=4854690-75691");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        //if user not login then user will not be do recharge
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('Login first')</script>");﻿
        }
            //else user will be do eacharge
        else
        {
            //delete the rech1 table
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
            conn1.Open();
            SqlCommand cmd1 = new SqlCommand("delete from rech1 where User_Name='"+lbluser.Text+"'", conn1);
            cmd1.ExecuteNonQuery();
            conn1.Close();
           //delete the rech1 table

       //insert value in rech1 table
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
            conn.Open();
            String insertQuery = "insert into rech1(User_Name,Mobile_No,Operator,Circle) values(@username,@mobino,@opr,@circle)";
            SqlCommand  cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", lbluser.Text);
                cmd.Parameters.AddWithValue("@mobino", txtmobino.Text);
                cmd.Parameters.AddWithValue("@opr", ddlopetator.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@circle", ddlcircle.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
                
         
                 conn.Close();
                 Response.Redirect("Recharge1.aspx");
            //insert value in rech1 table
        }

    }

 protected void lblviewphonebook_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}

    
