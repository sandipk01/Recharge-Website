using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Text;


public partial class Contact_Us : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
    StringBuilder table = new StringBuilder();
    StringBuilder table1 = new StringBuilder();
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


        




        lblusername.Text = "";
        lblmobino.Text = "";
        lblemail.Text = "";
        SqlCommand com;
        String str;
        conn.Open();
        str = "select * from UserData where User_Name='" + lbluser.Text + "'";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            lblusername.Text = reader["User_Name"].ToString();
            lblmobino.Text = reader["Mobile_No"].ToString();
            lblemail.Text = reader["Email"].ToString();
            reader.Close();
            conn.Close();

        }

        //


       
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [USerQuerys] where User_Name='" + lbluser.Text + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table border='1'>");
            table.Append("<tr><th>Date</th><th>Time</th><th>Your Comment</th>");
            table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[4] + "</td>");
                    table.Append("<td>" + rd[5] + "</td>");
                    table.Append("<td>" + rd[3] + "</td>");


                    table.Append("</tr>");
                }
            }
            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });

            rd.Dispose();
            rd.Close();

 

      
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ToString();
            con1.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select * from [EasyRechargeComment] where UserName='" + lbluser.Text + "'";
            cmd2.Connection = con1;
            SqlDataReader rd1 = cmd2.ExecuteReader();
            table1.Append("<table border='1'>");
            table1.Append("<tr><th>Date</th><th>Time</th><th>EasyRecharge Response</th>");
            table1.Append("</tr>");
            if (rd1.HasRows)
            {
                while (rd1.Read())
                {
                    table1.Append("<tr>");
                    table1.Append("<td>" + rd1[1] + "</td>");
                    table1.Append("<td>" + rd1[2] + "</td>");
                    table1.Append("<td>" + rd1[3] + "</td>");


                    table1.Append("</tr>");
                }
            }
            table1.Append("</table>");
            PlaceHolder2.Controls.Add(new Literal { Text = table1.ToString() });

            rd1.Dispose();
            rd1.Close();

     





        //

        if (DropDownList1.SelectedValue == "1")
        {
            lblans.Text = ("Plz Select Any Contanint");
            custcare.Visible = true;
            lblans.Visible = true;

        }
        if (DropDownList1.SelectedValue == "2")
        {
            lblans.Text = "";
            lbl.Visible = false;
            custcare.Visible = false;
        }
        if (DropDownList1.SelectedValue == "3")
        {
            lblans.Text = ("Sometimes due to technical reasons or delayed response from the bank the recharge shows as failed even though the amount has been deducted from your account. Be assured that your amount is totally secure and as per bank procedure it would be refunded within 2-12 working days. If you do not receive the refund within 12 working days from the day of transaction, kindly contact us again");
            lblans.Visible = true;
            btnunsolved.Visible = true;
            custcare.Visible = false;
        }

        if (DropDownList1.SelectedValue == "4")
        {
            lblans.Text = ("In case you have not received the recharge benefits immediately, please give us 24 hours to check and confirm with the operator. If the recharge shows as not successful in the meantime then the amount would reflect in the EasyWallet (for registered users) or would show in your account within 2-12 working days (for guest recharges).");
            lblans.Visible = true;
            btnunsolved.Visible = true;
            custcare.Visible = false;
        }

        if (DropDownList1.SelectedValue == "5")
        {
            lblans.Text = ("The recharge was not successful due to one of the following reasons: 1)Invalid Recharge Amoun 2)Invalid Operator 3)Technical problem from Operator. Usually the money is added to your EasyWallet instantly but in a rare occasion it does not reflect immediately then be assured that it will be added within a maximum of 1 hour.");
            lblans.Visible = true;
            btnunsolved.Visible = true;
            custcare.Visible = false;
        }
        if (DropDownList1.SelectedValue == "6")
        {
            lblans.Text = ("We apologize for the inconvenience caused however the talk time that you receive is defined by the mobile operator and we have no control over it. Sometimes operator may change their tariff plans but do not update sites immediately. Sometimes, the recharge value that you enter could be a special recharge that might give you free SMS, free data usage or reduced call rate without giving you any talk time.");
            lblans.Visible = true;
            btnunsolved.Visible = true;
            custcare.Visible = false;
        }
        if (DropDownList1.SelectedValue == "7")
        {
            lblans.Text = ("EasyWallet is an online wallet for EasyMobileRecharge registered users. Sometimes, a recharge might fail due to network failure, invalid amount, invalid operator, etc. and that amount would be added to EasyWallet. Moreover there are no extra charges for the recharges done through EasyWallet. To recharge using Easy Wallet 1) Log in to your EasyMobileRecharge account. 2) Enter Mobile, Amount, Operator and Circle. 3) Simply choose Easy Wallet on Payment Page.");
            lblans.Visible = true;
            btnunsolved.Visible = true;
            custcare.Visible = false;
        }
        if (DropDownList1.SelectedValue == "8")
        {
            lblans.Text = ("To add funds to Easy Wallet, you can transfer money directly to following account: Account Number 050605500016 Account Name Easymobile Recharge Bank Name ICICI (Branch Name City UNA) (IFSC Code ICIC0000506.) Note: While making the online transaction please mention your mobile number in the comments/transaction details. Once done, please inform us through your verified email regarding your transfer (with transfer details). We will add the amount in your Easy Wallet once the amount is reflected in our account. This may take 1-2 working days.");
            lblans.Visible = true;
            btnunsolved.Visible = true;
            custcare.Visible = false;
        }
        if (DropDownList1.SelectedValue == "9")
        {
            lblans.Text = ("");
            lblans.Visible = true;
            btnunsolved.Visible = true;
            custcare.Visible = false;
        }
    }
    protected void btnunsolved_Click(object sender, EventArgs e)
    {
        Panelquery.Visible = true;
        btnunsolved.Visible = false;
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");

    }


    protected void btnsubmitq_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        conn.Open();
        String insertQuery = "insert into USerQuerys(User_Name,Mobile_No,Email,Comment,Time,Date) values(@username,@mobileno,@email,@comment,@time,@date)";
        SqlCommand cmd1 = new SqlCommand(insertQuery, conn);

        cmd1.Parameters.AddWithValue("@username", lblusername.Text);
        cmd1.Parameters.AddWithValue("@mobileno", lblmobino.Text);
        cmd1.Parameters.AddWithValue("@email", lblemail.Text);
        cmd1.Parameters.AddWithValue("@comment", txtcomment.Text);
        cmd1.Parameters.AddWithValue("@time", lbltime.Text);
        cmd1.Parameters.AddWithValue("@date", lbldate.Text);


        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('Your Message Sent Successfully')</script>");﻿
        Server.Transfer("Contact_Us.aspx");
                conn.Close();
                txtcomment.Text = "";

        

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel1.Focus();
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Panelquery.Visible = true;
        btnunsolved.Visible = false;
    }
}