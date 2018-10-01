using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Changepassaspx : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
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
    }

        
    
    protected void btnchangepass_Click(object sender, EventArgs e)
    {

       SqlDataAdapter sda = new SqlDataAdapter("select Password from UserData where Password='"+txtopass.Text+"' and User_Name='"+lbluser.Text+"'", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {


            if (txtnpass.Text == txtcpass.Text)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Update UserData set Password='" + txtcpass.Text + "' where password='" + txtopass.Text + "'", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('password change successfully go to login again with new password')</script>");﻿
                 Session.RemoveAll();
                 lbluser.Visible = false;
                 lblwelcome.Visible = false;
                 btnlogout.Visible = false;
                 Server.Transfer("Home_Page.aspx");
            }        
          
        }
        else
        {
            Response.Write("<script>alert('Old password is wrong')</script>");﻿
               
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
        Response.Redirect("EditUserData.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserRechargeHistory.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("DTHRechargeHistory.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataCardHistory.aspx");
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