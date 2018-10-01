using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;



public partial class Recharge1 : System.Web.UI.Page
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

        if (ddlpay.SelectedIndex == 3)
        {
            ddlnetbanking.Visible = true;
        }
        else
        {
            ddlnetbanking.Visible = false;
        }

        if (ddlpay.SelectedIndex == 4)
        {
            ddlcreditcard.Visible = true;
        }
        else
        {
            ddlcreditcard.Visible = false;
        }
        if (ddlpay.SelectedIndex == 2)
        {
            ddlnetbanking.Visible = true;
            ddlcreditcard.Visible = true;
        }

    }
               
            
        
       
    

 

 
    protected void btnproceed_Click(object sender, EventArgs e)
    {
        if(ddlpay.SelectedIndex==1)
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
                SqlCommand cmd1 = new SqlCommand("delete from wallrech2 where User_Name='" + lbluser.Text + "'", conn1);
                cmd1.ExecuteNonQuery();
                conn1.Close();
                //delete the rech1 table

                //insert value in rech1 table
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into wallrech2(User_Name,Amount,Pay_Option) values(@username,@amu,@pay)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", lbluser.Text);
                cmd.Parameters.AddWithValue("@amu", txtamount.Text);
                cmd.Parameters.AddWithValue("@pay", ddlpay.SelectedItem.ToString());
                
                cmd.ExecuteNonQuery();
               
                 conn.Close();
                 Server.Transfer("recharge3.aspx");
                //insert value in rech1 table
            }
        }
            if (ddlpay.SelectedIndex == 2)
            {
                //delete the rech1 table
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn1.Open();
                SqlCommand cmd1 = new SqlCommand("delete from rech2 where User_Name='" + lbluser.Text + "'", conn1);
                cmd1.ExecuteNonQuery();
                conn1.Close();
                //delete the rech1 table

                //insert value in rech2 table
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into rech2(User_Name,Amount,Pay_Option,NetBank,Credit_Card) values(@username,@amu,@pay,@netbank,@credit)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", lbluser.Text);
                cmd.Parameters.AddWithValue("@amu", txtamount.Text);
                cmd.Parameters.AddWithValue("@pay", ddlpay.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@netbank", ddlnetbanking.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@credit", ddlcreditcard.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
            
         
                 conn.Close();
                 Response.Redirect("creditpayment.aspx");   
        
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

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton6.Text;
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton7.Text;
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton8.Text;
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton9.Text;
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton10.Text;
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton11.Text;
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton12.Text;
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton13.Text;
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton14.Text;
    }
    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton15.Text;
    }
    protected void LinkButton25_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton25.Text;
    }
    protected void LinkButton26_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton26.Text;
    }
    protected void LinkButton27_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton27.Text;

    }
    protected void LinkButton28_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton28.Text;
    }
    protected void LinkButton29_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton29.Text;
    }
    protected void LinkButton30_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton30.Text;
    }
    protected void LinkButton31_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton31.Text;
    }
    protected void LinkButton32_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton32.Text;
    }
    protected void LinkButton33_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton33.Text;
    }
    protected void LinkButton34_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton34.Text;
    }
    protected void LinkButton35_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton35.Text;
    }
    protected void LinkButton36_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton36.Text;
    }
    protected void LinkButton37_Click(object sender, EventArgs e)
    {
        txtamount.Text = LinkButton37.Text;
    }
}
