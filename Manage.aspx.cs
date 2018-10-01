using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;



public partial class Manage : System.Web.UI.Page
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
        ddlservicetype.SelectedItem.Text = "Mobile Recharge";
            if (ddlservicetype.SelectedIndex == 1)
            {
                Response.Redirect("Recharge.aspx");
            }
            if (ddlservicetype.SelectedIndex == 2)
            {
                Response.Redirect("DTHRecharge.aspx");
            }
            if (ddlservicetype.SelectedIndex == 3)
            {
                Response.Redirect("DataCardRecharge.aspx");
            }

            else
            {

   
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
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible== false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("EditUserData.aspx");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("UserRechargeHistory.aspx");
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("Contact_Us");
        }
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
            SqlCommand cmd1 = new SqlCommand("delete from rech1 where User_Name='" + lbluser.Text + "'", conn1);
            cmd1.ExecuteNonQuery();
            conn1.Close();
            //delete the rech1 table

            //insert value in rech1 table
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
            conn.Open();
            String insertQuery = "insert into rech1(User_Name,Mobile_No,Operator,Circle) values(@username,@mobino,@opr,@circle)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@username", lbluser.Text);
            cmd.Parameters.AddWithValue("@mobino", txtmobino.Text);
            cmd.Parameters.AddWithValue("@opr", ddlopetator.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@circle", ddlcircle.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registration is Sucessfull go to login page')</script>");﻿
         
                 conn.Close();
                 Response.Redirect("Recharge1.aspx");
            //insert value in rech1 table
        }

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://turnkeyinternet.net/2016/?gclid=CNuI_rm6sMoCFQqhaAodANsJcg");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://home.labs.mediatek.com/hello7688/?utm_source=google-fb&utm_medium=cpc&utm_campaign=7688&gclid=CNCO3Mq_sMoCFdaGaAod_NoOLQ");
    }
    protected void lbphonebook_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("phonebook.aspx");
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("Changepassaspx.aspx");
        }
    }
    protected void lbaddmoney_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("Addwamount.aspx");
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("DTHRechargeHistory.aspx");
        }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('First Login Plz')</script>");
        }
        else
        {
            Response.Redirect("DataCardHistory.aspx");
        }
    }
}