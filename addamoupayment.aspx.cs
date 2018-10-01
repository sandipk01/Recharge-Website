using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class addamoupayment : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        lbltime.Text = DateTime.Now.ToLongTimeString();
        lbldate.Text = DateTime.Now.ToLongDateString();
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
            SqlCommand com;
            String str;
            conn.Open();
            str = "select * from addamount where User_Name='" + lbluser.Text + "'";
            com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                lbluser.Text = reader["User_Name"].ToString();
                lbltamu.Text = reader["Amount"].ToString();
                lblpayoption.Text = reader["Paymentoption"].ToString();
                lblbank.Text= reader["Bank"].ToString();
                lblcardtype.Text= reader["CardType"].ToString();
                reader.Close();
                conn.Close();

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
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");
    }
    protected void btnmakepay_Click(object sender, EventArgs e)
    {
         conn.Open();

        String insertQuery1 = "insert into addamount1(User_Name,Amount,Paymentoption,Bank,Cardtype,Time,Date,Status) values(@username,@amu,@payo,@bank,@tcard,@time,@date,@status)";
        SqlCommand cmd2 = new SqlCommand(insertQuery1, conn);
        cmd2.Parameters.AddWithValue("@username", lbluser.Text);
        cmd2.Parameters.AddWithValue("@amu", lbltamu.Text);
        cmd2.Parameters.AddWithValue("@payo", lblpayoption.Text);
        cmd2.Parameters.AddWithValue("@bank", lblbank.Text);
        cmd2.Parameters.AddWithValue("@tcard", lblcardtype.Text);
        cmd2.Parameters.AddWithValue("@time", lbltime.Text);
        cmd2.Parameters.AddWithValue("@date", lbldate.Text);
        cmd2.Parameters.AddWithValue("@status", lblsuc.Text);
        cmd2.ExecuteNonQuery();

        float a = Convert.ToInt32(lblwallet.Text);

        float b = Convert.ToInt32(lbltamu.Text);

        float c = a + b;

        lbladd.Text = Convert.ToString(c);


        SqlDataAdapter ada1 = new SqlDataAdapter("update UserData set EasyWallet='" + lbladd.Text + "'where User_Name='" + lbluser.Text + "'", conn);

        DataSet ds1 = new DataSet();
        ada1.Fill(ds1);

        Response.Write("<script>alert('Amount added in Wallet SucessFully')</script>");﻿
       conn.Close();
       Server.Transfer("Manage.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        conn.Open();

        String insertQuery1 = "insert into addamount1(User_Name,Amount,Paymentoption,Bank,Cardtype,Time,Date,Status) values(@username,@amu,@payo,@bank,@tcard,@time,@date,@status)";
        SqlCommand cmd2 = new SqlCommand(insertQuery1, conn);
        cmd2.Parameters.AddWithValue("@username", lbluser.Text);
        cmd2.Parameters.AddWithValue("@amu", lbltamu.Text);
        cmd2.Parameters.AddWithValue("@payo", lblpayoption.Text);
        cmd2.Parameters.AddWithValue("@bank", lblbank.Text);
        cmd2.Parameters.AddWithValue("@tcard", lblcardtype.Text);
        cmd2.Parameters.AddWithValue("@time", lbltime.Text);
        cmd2.Parameters.AddWithValue("@date", lbldate.Text);
        cmd2.Parameters.AddWithValue("@status", lblunsuc.Text);
        cmd2.ExecuteNonQuery();
        Response.Write("<script>alert('Transaction is Failed')</script>");
        conn.Close();
        Server.Transfer("Manage.aspx");

    }
}