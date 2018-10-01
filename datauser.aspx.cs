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
using System.Text;

public partial class datauser : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text = Session["new"].ToString();

 //username id count  
        string str3;
        SqlCommand com3;
        int count=0;

        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);

        str3 = "select count(*) from UserData";
        com3 = new SqlCommand(str3, conn3);
        conn3.Open();
        count = Convert.ToInt16(com3.ExecuteScalar()) + 1;
        lblid.Text = "" + count;
        conn3.Close();
//
       //count total no of user
        string str4;
        SqlCommand com4;
        int count4=0;
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        str4 = "select count(*) from UserData";
        com4 = new SqlCommand(str4, conn4);
        conn4.Open();
        count4 = Convert.ToInt16(com4.ExecuteScalar());
        tnouser.Text = "" + count4;
        conn4.Close();
//
        //count total no of males
        string str5;
        SqlCommand com5;
        int count5=0;
        SqlConnection conn5 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        str5 = "select count(*) from UserData where Gender='Male'";
        com5 = new SqlCommand(str5, conn5);
        conn5.Open();
        count5 = Convert.ToInt16(com5.ExecuteScalar());
        tnomale.Text = "" + count5;
        conn5.Close();
        //

        // count total no of female
        string str6;
        SqlCommand com6;
        int count6=0;
        SqlConnection conn6 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        str6 = "select count(*) from UserData where Gender='Female'";
        com6 = new SqlCommand(str6, conn6);
        conn6.Open();
        count6 = Convert.ToInt16(com6.ExecuteScalar());
        tnofemale.Text = "" + count6;
        conn6.Close();
        //

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from [UserData] where Gender='" + DropDownList2.Text + "' and RegisterDate>='" + ddlfromdate.Text + "' and RegisterDate<='" + ddltodate.Text + "'";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        table.Append("<table border='1'>");
        table.Append("<tr><th>Registration date</th><th>Registration time</th><th>user name</th><th>email</th><th>mobile no</th><th>country</th><th>gender</th><th>age</th><th>Password</ph>");
        table.Append("</tr>");
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                table.Append("<tr>");
                table.Append("<td>" + rd[9] + "</td>");
                table.Append("<td>" + rd[8] + "</td>");
                table.Append("<td>" + rd[2] + "</td>");
                table.Append("<td>" + rd[1] + "</td>");
                table.Append("<td>" + rd[4] + "</td>");
                table.Append("<td>" + rd[5] + "</td>");
                table.Append("<td>" + rd[6] + "</td>");
                table.Append("<td>" + rd[7] + "</td>");
                table.Append("<td>" + rd[3] + "</td>");
                table.Append("</tr>");
            }
        }
        table.Append("</table>");
        PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });

        rd.Dispose();
        rd.Close();

        SqlCommand com;
        String str;
        conn.Open();
        str = "select * from UserData where User_Name='" + DropDownList1.Text + "'";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            lblemail.Text = reader["Email"].ToString();
            lblusername.Text = reader["User_Name"].ToString();
            lblpassword.Text = reader["Password"].ToString();
            lblmobino.Text= reader["Mobile_No"].ToString();
            lblcountry.Text = reader["Country"].ToString();
            lblgender.Text = reader["Gender"].ToString();
            lblage.Text= reader["Age"].ToString();
            lbltime.Text = reader["RegisterTime"].ToString();
            lbldate.Text= reader["RegisterDate"].ToString();
            reader.Close();
            conn.Close();

        }


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("delete from UserData Where User_Name='"+DropDownList1.Text+"'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("datauser.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void btnemail_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Email='" + txtemail.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btnusername_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set User_Name='" + txtusername.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btnpassword_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Password='" + txtpassword.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btnmobino_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Mobile_No='" + txtmobino.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btncountry_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Country='" + ddlcountry.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btngender_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Gender='" +ddlgender.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btnage_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Age='" + txtage.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btntime_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set RegisterTime='" +txttime.Text  + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    }
    protected void btndate_Click(object sender, EventArgs e)
    {
         SqlDataAdapter ada = new SqlDataAdapter("update UserData set RegisterDate='" +txtdate.Text + "'where User_Name='" + DropDownList1.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("datauser.aspx");
    
    }
    protected void lbemail_Click(object sender, EventArgs e)
    {
        txtemail.Visible = true;
        btnemail.Visible = true;
        btnmobino.Focus();
    }
    protected void lbusername_Click(object sender, EventArgs e)
    {
        txtusername.Visible = true;
        btnusername.Visible = true;
    }
    protected void lbpassword_Click(object sender, EventArgs e)
    {
        txtpassword.Visible = true;
        btnpassword.Visible = true;
    }
    protected void lbmobino_Click(object sender, EventArgs e)
    {
        txtmobino.Visible = true;
        btnmobino.Visible = true;
    }
    protected void lbcountry_Click(object sender, EventArgs e)
    {
        ddlcountry.Visible = true;
        btncountry.Visible = true;
    }
    protected void lbgender_Click(object sender, EventArgs e)
    {
        ddlgender.Visible = true;
        btngender.Visible = true;

    }
    protected void lbage_Click(object sender, EventArgs e)
    {
        txtage.Visible = true;
        btnage.Visible = true;
    }
    protected void lbtime_Click(object sender, EventArgs e)
    {
        txttime.Visible = true;
        btntime.Visible = true;
    }
    protected void lbdate_Click(object sender, EventArgs e)
    {
        txtdate.Visible = true;
        btndate.Visible = true;
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
           try
         {
             SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
             conn1.Open();
              String checkuser = "select count(*) from UserData where User_Name='" + txtusername1.Text + "' ";
                 SqlCommand cmd = new SqlCommand(checkuser, conn1);
             int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
             if (temp > 0)
             {
                 lblchekuser2.Text = "User Name Is Alredy Exist";
                 lblchekuser2.Visible = true;
             }
                 else
             {

                

                 String insertQuery = "insert into UserData(Id,Email,User_Name,Password,Mobile_No,Country,Gender,Age,RegisterTime,RegisterDate) values(@id,@email,@username,@password,@mobileno,@country,@gender,@age,@time,@date)";
                 cmd = new SqlCommand(insertQuery, conn1);
                  cmd.Parameters.AddWithValue("@id", lblid.Text.Trim());
                 cmd.Parameters.AddWithValue("@email", txtemail1.Text);
                 cmd.Parameters.AddWithValue("@username", txtusername1.Text);
                 cmd.Parameters.AddWithValue("@password", txtpassword1.Text);
                 cmd.Parameters.AddWithValue("@mobileno", txtmobino1.Text);
                 cmd.Parameters.AddWithValue("@age", txtage1.Text);
                 cmd.Parameters.AddWithValue("@country", ddlcountry1.SelectedItem.ToString());
                 cmd.Parameters.AddWithValue("@gender", ddlgender1.SelectedItem.ToString());
                 cmd.Parameters.AddWithValue("@time", txttime1.Text);
                 cmd.Parameters.AddWithValue("@date", txtdate1.Text);
                 cmd.ExecuteNonQuery();
                 Response.Write("<script>alert('New User Added')</script>");﻿
                 Response.Redirect("datauser.aspx");
                
                 }
             conn1.Close();
             
         }
               

         catch (SqlException ex)
         {
             Response.Write("Error:" + ex.ToString());

         }
    }
    protected void btnrefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("datauser.aspx");
    }
    protected void btndisplayall_Click(object sender, EventArgs e)
    {
        Panel2.Focus();
        Panel2.Visible = true;
        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("rechargehistorydata.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdmindthRecharge.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("admindatacard.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("SendResponse.aspx");
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Home_Page.aspx");
    }
}

 
  
