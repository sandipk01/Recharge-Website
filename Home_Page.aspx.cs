using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using SpeechLib;

public partial class Home_Page : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        lbltime.Text = DateTime.Now.ToLongTimeString();
        lbldate.Text = DateTime.Now.ToLongDateString();
        if (!IsPostBack)
        {
            if (Session["new"] != null)
            {

                lbluser.Text = Session["new"].ToString();
                Panellogin.Visible = false;
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



        if (!IsPostBack)
        {
            SetImageUrl();
        }

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }
    private void SetImageUrl()
    {
        Random _rand = new Random();
        int i = _rand.Next(1, 10);
        Image1.ImageUrl = "~/home images/" + i.ToString() + ".jpg";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtusername.Text == "admin" && txtpassword.Text == "admin")
        {
            Session["new"] = txtusername.Text;
            Response.Redirect("AdminManage.aspx");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "select count(*) from UserData where User_Name='" + txtusername.Text + "' ";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                String checkpass = "select Password from UserData where User_Name='" + txtusername.Text + "' ";
                SqlCommand passcmd = new SqlCommand(checkpass, conn);
                string password = passcmd.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtpassword.Text)
                {

                    Session["new"] = txtusername.Text;

                    //
                    String insertQuery = "insert into LoginSession(User_Name,LoginDate,LoginTime) values(@username,@ldate,@ltime)";
                    cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@username", txtusername.Text);
                    cmd.Parameters.AddWithValue("@ldate", lbldate.Text);
                    cmd.Parameters.AddWithValue("@ltime", lbltime.Text);
                    cmd.ExecuteNonQuery();

                    //
                    SpVoice voice = new SpVoice();
                    voice.Speak("Welcome" + txtusername.Text);
                    Response.Write("<script>alert('Login Successfully')</script>");
                    Server.Transfer("Manage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('password is Wrong')</script>");﻿
                SpVoice voice = new SpVoice();
                voice.Speak("Password is Wrong");
                }

            }
            else
            {
                Response.Write("<script>alert('user name or password is Wrong')</script>");﻿
             SpVoice voice = new SpVoice();
             voice.Speak("user name or password is Wrong");
            }
            conn.Close();
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Panellogin.Visible = true;
        Server.Transfer("Home_Page.aspx");
       
    }
    protected void NameTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}