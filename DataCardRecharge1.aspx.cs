using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DataCardRecharge1 : System.Web.UI.Page
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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);

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

        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        SqlCommand com1;
        String str1;
        conn1.Open();
        str1 = "select * from DataCardWallet where User_Name='" + lbluser.Text + "'";
        com1 = new SqlCommand(str1, conn1);
        SqlDataReader reader1 = com1.ExecuteReader();
        if (reader1.Read())
        {
            lbloprator.Text = reader1["Operator"].ToString();
            lbldatacardno.Text = reader1["Datacardno"].ToString();
            lblcircle.Text= reader1["Circle"].ToString();
            lblamount.Text = reader1["Amount"].ToString();
            lblpayoption.Text = reader1["Paymentoption"].ToString();
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
            Response.Write("<script>alert('Plz Agree The Terms and Condition ')</script>");﻿
        }
        if (CheckBox2.Checked == false)
        {
            Response.Write("<script>alert('Plz Agree The Condition ')</script>");﻿
        }
        else
        {
            float f = Convert.ToInt32(lblwallet.Text);
            float g = Convert.ToInt32(lblamount.Text);
            if (f < g)
            {
                Response.Write("<script>alert('Wallet Balance is not Enough')</script>");﻿
        }

            else
            {
                conn.Open();

                String insertQuery = "insert into DatacardWalletPayment(User_Name,Operator,Datacardno,Circle,Amount,Paymentoption,Time,Date,Status) values(@username,@opr,@datacno,@circle,@amu,@pay,@time,@date,@status)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", lbluser.Text);
                cmd.Parameters.AddWithValue("@opr", lbloprator.Text);
                cmd.Parameters.AddWithValue("@datacno", lbldatacardno.Text);
                cmd.Parameters.AddWithValue("@circle", lblcircle.Text);
                cmd.Parameters.AddWithValue("@amu", lblamount.Text);
                cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
                cmd.Parameters.AddWithValue("@time", lbltime.Text);
                cmd.Parameters.AddWithValue("@date", lbldate.Text);
                cmd.Parameters.AddWithValue("@status", lblsuc.Text);
                cmd.ExecuteNonQuery();



                float a = Convert.ToInt32(lblwallet.Text);

                float b = Convert.ToInt32(lblamount.Text);

                float c = a - b;

                lblsubstract.Text = Convert.ToString(c);


                SqlDataAdapter ada = new SqlDataAdapter("update UserData set EasyWallet='" + lblsubstract.Text + "'where User_Name='" + lbluser.Text + "'", conn);

                DataSet ds = new DataSet();
                ada.Fill(ds);

                Response.Write("<script>alert('Recharge is Done')</script>");﻿

         conn.Close();
         Server.Transfer("Manage.aspx");

            }
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        conn.Open();

        String insertQuery = "insert into DatacardWalletPayment(User_Name,Operator,Datacardno,Circle,Amount,Paymentoption,Time,Date,Status) values(@username,@opr,@datacno,@circle,@amu,@pay,@time,@date,@status)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@username", lbluser.Text);
        cmd.Parameters.AddWithValue("@opr", lbloprator.Text);
        cmd.Parameters.AddWithValue("@datacno", lbldatacardno.Text);
        cmd.Parameters.AddWithValue("@circle", lblcircle.Text);
        cmd.Parameters.AddWithValue("@amu", lblamount.Text);
        cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
        cmd.Parameters.AddWithValue("@time", lbltime.Text);
        cmd.Parameters.AddWithValue("@date", lbldate.Text);
        cmd.Parameters.AddWithValue("@status", lblunsuc.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Transaction is Failed')</script>");
        conn.Close();
        Server.Transfer("Manage.aspx");

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
      
        
    }
}