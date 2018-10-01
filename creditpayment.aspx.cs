using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class creditpayment : System.Web.UI.Page
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
               

            }
        }

        SqlCommand com;
        String str;
        conn.Open();
        str = "select * from rech1 where User_Name='" + lbluser.Text + "'";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            lblmobino.Text = reader["Mobile_No"].ToString();
            lbloperator.Text = reader["Operator"].ToString();
            lblcircle.Text = reader["Circle"].ToString();
            reader.Close();
            conn.Close();

        }

        SqlCommand com1;
        String str1;
        conn.Open();
        str1 = "select * from rech2 where User_Name='" + lbluser.Text + "'";
        com1 = new SqlCommand(str1, conn);
        SqlDataReader reader1 = com1.ExecuteReader();
        if (reader1.Read())
        {
            lbltamu.Text = reader1["Amount"].ToString();
            lblpayoption.Text = reader1["Pay_Option"].ToString();
            lblbank.Text= reader1["NetBank"].ToString();
            lblcardtype.Text = reader1["Credit_Card"].ToString();
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

        String insertQuery = "insert into creditdata1(User_Name,Mobile_No,Operator,Circle,Amount,Pay_Option,Bank,Card_Type,Date,Time,Status) values(@username,@mobino,@opr,@circle,@amu,@pay,@bank,@tcard,@date,@time,@status)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@username", lbluser.Text);
        cmd.Parameters.AddWithValue("@mobino", lblmobino.Text);
        cmd.Parameters.AddWithValue("@opr", lbloperator.Text);
        cmd.Parameters.AddWithValue("@circle", lblcircle.Text);
        cmd.Parameters.AddWithValue("@amu", lbltamu.Text);
        cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
        cmd.Parameters.AddWithValue("@bank", lblbank.Text);
        cmd.Parameters.AddWithValue("@tcard",lblcardtype.Text);
        cmd.Parameters.AddWithValue("@date", lbldate.Text);
        cmd.Parameters.AddWithValue("@time", lbltime.Text);
        cmd.Parameters.AddWithValue("@status", lblsuc.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Recharge is Done')</script>");﻿ 
        Server.Transfer("Manage.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        conn.Open();

        String insertQuery = "insert into creditdata1(User_Name,Mobile_No,Operator,Circle,Amount,Pay_Option,Bank,Card_Type,Date,Time,Status) values(@username,@mobino,@opr,@circle,@amu,@pay,@bank,@tcard,@date,@time,@status)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@username", lbluser.Text);
        cmd.Parameters.AddWithValue("@mobino", lblmobino.Text);
        cmd.Parameters.AddWithValue("@opr", lbloperator.Text);
        cmd.Parameters.AddWithValue("@circle", lblcircle.Text);
        cmd.Parameters.AddWithValue("@amu", lbltamu.Text);
        cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
        cmd.Parameters.AddWithValue("@bank", lblbank.Text);
        cmd.Parameters.AddWithValue("@tcard", lblcardtype.Text);
        cmd.Parameters.AddWithValue("@date", lbldate.Text);
        cmd.Parameters.AddWithValue("@time", lbltime.Text);
        cmd.Parameters.AddWithValue("@status", lblunsuc.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Transaction is Failed')</script>");
        Server.Transfer("Manage.aspx");
    }
}