using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Net;
using System.Net.Mail;
using SpeechLib;

public partial class Register_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       string str3;
        SqlCommand com3;
        int count;

        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);

        str3 = "select count(*) from UserData";
        com3 = new SqlCommand(str3, conn3);
        conn3.Open();
        count = Convert.ToInt16(com3.ExecuteScalar()) + 1;
        lblid.Text = "" + count;
        conn3.Close();


        if (!IsPostBack)
        {
            if (Session["new"] != null)
            {

                lbluser.Text = Session["new"].ToString();
                lbluser.Visible = true;
                lblwelcome.Visible = true;
                btnlogout.Visible = true;
                Panelregi.Visible = false;
                wallamount.Visible = true;
                lblwallet.Visible = true;
         

            }
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
       
       
            lbltime.Text = DateTime.Now.ToLongTimeString();
            lbldate.Text = DateTime.Now.ToLongDateString();
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
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://general.bajajallianz.com/MotorInsurance/MotorInsurance.jsp?p_type=BCI&src=CBM_055&utm_source=Google&param1=Brand-Auto-Insurance-S&param2=Allianz-Auto-Insurance+Exact&param3=bajaj%20allianz%20motor%20insurance&gclid=CMGiqN3D-ckCFQ-haAodKmAL2w");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.easymobilerecharge.com/free-discount-coupons-online-recharge-popup.php");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (chkagree.Checked == false)
        {
            Response.Write("<script>alert('Accept the terms and condition')</script>");﻿
        }
        else
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                String checkuser = "select count(*) from UserData where User_Name='" + txtusername.Text + "' ";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    lblchekuser.Text = "User Name Is Alredy Exist";
                    lblchekuser.Visible = true;
                }
                else
                {


                    String insertQuery = "insert into UserData(Id,Email,User_Name,Password,Mobile_No,Country,Gender,Age,RegisterTime,RegisterDate,EasyWallet) values(@id,@email,@username,@password,@mobileno,@country,@gender,@age,@time,@date,@easyWallet)";
                    cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@id", lblid.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@username", txtusername.Text);
                    cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd.Parameters.AddWithValue("@mobileno", txtmobileno.Text);
                    cmd.Parameters.AddWithValue("@age", txtage.Text);
                    cmd.Parameters.AddWithValue("@country", ddlcountry.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@time", lbltime.Text);
                    cmd.Parameters.AddWithValue("@date", lbldate.Text);
                    lblwallet.Text = "5";
                    cmd.Parameters.AddWithValue("@easywallet", lblwallet.Text);


                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Registration is Sucessfull go to login page')</script>");﻿

                SpVoice voice = new SpVoice();
                voice.Speak("Hello   " + txtusername.Text + "Registration is sucessfully done");
                    /*
                     MailMessage msg=new MailMessage();
                     msg.From=new MailAddress(lblfrom.Text);
                     msg.To.Add(txtemail.Text);
                     msg.Subject=lblsub.Text;
                     msg.Body = "Thanks " + txtusername.Text + " for registered. Now you will get Mobile,DTH,Data Card Recharge that type of servises";
                     SmtpClient sc=new SmtpClient("smtp.gmail.com");
                     sc.Port=25;
                     sc.Credentials=new NetworkCredential(lblfrom.Text,lblpass.Text);
                     sc.EnableSsl=true;
                     sc.Send(msg);
                        */
                }
                conn.Close();
            }


            catch (SqlException ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        Panelregi.Visible = true;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");
    }
 
}

