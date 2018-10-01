using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Net;
using SpeechLib;

public partial class recharge3 : System.Web.UI.Page
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

            SqlCommand com2;
            String str2;
            conn.Open();
            str2 = "select * from UserData where User_Name='" + lbluser.Text + "'";
            com2 = new SqlCommand(str2, conn);
            SqlDataReader reader2 = com2.ExecuteReader();
            if (reader2.Read())
            {
                lblwallet.Text = reader2["EasyWallet"].ToString();

                reader2.Close();
                conn.Close();

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
            lblloperator.Text = reader["Operator"].ToString();
            lblcircle.Text = reader["Circle"].ToString();
            reader.Close();
            conn.Close();

        }




        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        SqlCommand com1;
        String str1;
        conn1.Open();
        str1 = "select * from wallrech2 where User_Name='" + lbluser.Text + "'";
        com1 = new SqlCommand(str1, conn1);
        SqlDataReader reader1 = com1.ExecuteReader();
        if (reader1.Read())
        {
            lblamount.Text = reader1["Amount"].ToString();
            lblpayoption.Text = reader1["Pay_Option"].ToString();
            reader1.Close();
            conn1.Close();

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
    protected void btnproceed_Click(object sender, EventArgs e)
    {


        if (CheckBox1.Checked == false)
        {
            Response.Write("<script>alert('Plz agree the terms and Condition')</script>");﻿
        }

        if (CheckBox2.Checked == false)
        {
            Response.Write("<script>alert('Plz agree the Condition')</script>");﻿
        }

        else
        {

            float f = Convert.ToInt32(lblwallet.Text);
            float g = Convert.ToInt32(lblamount.Text);
            if (f < g)
            {
                Response.Write("<script>alert('Wallet Balance is not Enough')</script>");﻿
         SpVoice voice = new SpVoice();
         voice.Speak("your Wallet Balance is not Enough for This Recharge add more money to wallet");
            }

            else
            {
                conn.Open();

                String insertQuery = "insert into rechdata(User_Name,Mobile_No,Operator,Circle,Amount,Pay_Option,Date,Time,Status) values(@username,@mobino,@opr,@circle,@amu,@pay,@date,@time,@status)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", lbluser.Text);
                cmd.Parameters.AddWithValue("@mobino", lblmobino.Text);
                cmd.Parameters.AddWithValue("@opr", lblloperator.Text);
                cmd.Parameters.AddWithValue("@circle", lblcircle.Text);
                cmd.Parameters.AddWithValue("@amu", lblamount.Text);
                cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
                cmd.Parameters.AddWithValue("@date", lbldate.Text);
                cmd.Parameters.AddWithValue("@time", lbltime.Text);
                cmd.Parameters.AddWithValue("@status", blsuc.Text);
                cmd.ExecuteNonQuery();



                float a = Convert.ToInt32(lblwallet.Text);

                float b = Convert.ToInt32(lblamount.Text);

                float c = a - b;

                lblsubstract.Text = Convert.ToString(c);


                SqlDataAdapter ada = new SqlDataAdapter("update UserData set EasyWallet='" + lblsubstract.Text + "'where User_Name='" + lbluser.Text + "'", conn);

                DataSet ds = new DataSet();
                ada.Fill(ds);

                Response.Write("<script>alert('Recharge is Done')</script>");﻿
         SpVoice voice = new SpVoice();
         voice.Speak(lblamount.Text + "rupees Recharge is Done");

         Server.Transfer("Manage.aspx");
         conn.Close();

            }

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.askmebazaar.com/Sports-MP3-Music-Player-b-665007?s_kwcid=AL!483!3!85452924552!!www.easymobilerecharge.com!d!!&ef_id=Vo8ilAAAAH0fc4gb:20160117135356:s&gclid=CITRvr3_sMoCFdWGaAodg20J5A");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://turnkeyinternet.net/2016/?gclid=CNuI_rm6sMoCFQqhaAodANsJcg");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        conn.Open();

        String insertQuery = "insert into rechdata(User_Name,Mobile_No,Operator,Circle,Amount,Pay_Option,Date,Time,Status) values(@username,@mobino,@opr,@circle,@amu,@pay,@date,@time,@status)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@username", lbluser.Text);
        cmd.Parameters.AddWithValue("@mobino", lblmobino.Text);
        cmd.Parameters.AddWithValue("@opr", lblloperator.Text);
        cmd.Parameters.AddWithValue("@circle", lblcircle.Text);
        cmd.Parameters.AddWithValue("@amu", lblamount.Text);
        cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
        cmd.Parameters.AddWithValue("@date", lbldate.Text);
        cmd.Parameters.AddWithValue("@time", lbltime.Text);
        cmd.Parameters.AddWithValue("@status", lblunsuc.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Transaction is Failed')</script>");
        conn.Close();
        Server.Transfer("Manage.aspx");
    }
}

