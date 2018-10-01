using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DataCardRecharge : System.Web.UI.Page
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
                lblwallet.Visible = true;


            }
        }

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
        ddlservicetype.SelectedItem.Text = "Data Card";
        if (ddlpayoption.SelectedIndex == 1)
        {
            ddlcardtype.Visible = false;
            lblcardtype.Visible = false;
        }
        if (ddlpayoption.SelectedIndex == 2)
        {
            ddlcardtype.Visible = true;
            lblcardtype.Visible = true;
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
    protected void imgbrecharge_Click(object sender, ImageClickEventArgs e)
    {
        if (lbluser.Visible == false)
        {
            Response.Write("<script>alert('Login first')</script>");﻿
        }
        else
        {
            if (ddlpayoption.SelectedIndex == 1)
            {

                //else user will be do eacharge



                //delete the rech1 table
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn1.Open();
                SqlCommand cmd1 = new SqlCommand("delete from DataCardWallet where User_Name='" + lbluser.Text + "'", conn1);
                cmd1.ExecuteNonQuery();
                conn1.Close();
                //delete the rech1 table

                //insert value in rech1 table
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into DataCardWallet(User_Name,Operator,Datacardno,Circle,Amount,Paymentoption) values(@username,@opr,@datacno,@circle,@amu,@payo)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", lbluser.Text);
                cmd.Parameters.AddWithValue("@opr", ddloperator.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@datacno", txtdatacno.Text);
                cmd.Parameters.AddWithValue("@circle", ddlcircle.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@amu", txtamount.Text);
                cmd.Parameters.AddWithValue("@payo", ddlpayoption.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registration is Sucessfull go to login page')</script>");﻿
                conn.Close();
                Response.Redirect("DataCardRecharge1.aspx");
                //insert value in rech1 table


            }
            if (ddlpayoption.SelectedIndex == 2)
            {
                if (lbluser.Visible == false)
                {
                    Response.Write("<script>alert('Login first')</script>");﻿
        }
                //else user will be do eacharge



                //delete the rech1 table
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn1.Open();
                SqlCommand cmd1 = new SqlCommand("delete from DataCardCredit where User_Name='" + lbluser.Text + "'", conn1);
                cmd1.ExecuteNonQuery();
                conn1.Close();
                //delete the rech1 table

                //insert value in rech1 table
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into DataCardCredit(User_Name,Operator,Datacardno,Circle,Amount,Paymentoption,Typecard) values(@username,@opr,@datacno,@circle,@amu,@payo,@tcard)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", lbluser.Text);
                cmd.Parameters.AddWithValue("@opr", ddloperator.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@datacno", txtdatacno.Text);
                cmd.Parameters.AddWithValue("@circle", ddlcircle.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@amu", txtamount.Text);
                cmd.Parameters.AddWithValue("@payo", ddlpayoption.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tcard", ddlcardtype.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registration is Sucessfull go to login page')</script>");﻿
                conn.Close();
                Response.Redirect("DataCardRechargePayment.aspx");
                //insert value in rech1 table


            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditUserData.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserRechargeHistory.aspx");
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
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("DTHRechargeHistory.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataCardHistory.aspx");
    }
}