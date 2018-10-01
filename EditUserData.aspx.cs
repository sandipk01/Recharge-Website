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

public partial class EditUserData : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
      

        if (Session["new"] != null)
        {

            lbluser.Text = Session["new"].ToString();
            lbluser.Visible = true;
            lblwelcome.Visible = true;
            btnlogout.Visible = true;

            Label1.Text = lbluser.Text;

            wallamount.Visible = true;
            lblwallet.Visible = true;
            rs.Visible = true;

        }
        SqlCommand com;
        String str;
        conn.Open();
        str = "select * from UserData where User_Name='" + lbluser.Text + "'";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            lblemail.Text = reader["Email"].ToString();
            lblmobino.Text = reader["Mobile_No"].ToString();
            lblage.Text = reader["Age"].ToString();
            lblcountry.Text = reader["Country"].ToString();
            lblgender.Text = reader["Gender"].ToString();
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
       
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from [UserData] where User_Name='"+lbluser.Text+"'";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border='1'>");
                table.Append("<tr><th>Registration date</th><th>Registration time</th><th>user name</th><th>email</th><th>mobile no</th><th>country</th><th>gender</th><th>age</th>");
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

                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });

                rd.Dispose();
                rd.Close();

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
   

    protected void upemail_Click(object sender, EventArgs e)
    {
      
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Email='" + txtemail.Text + "'where User_Name='" + lbluser.Text + "'", conn);

        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("EditUserData.aspx");
       
            
    }


    protected void upmobino_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Mobile_No='" + txtmobino.Text + "'where User_Name='" + lbluser.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("EditUserData.aspx");
    }
    protected void upage_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Age='" + txtage.Text + "'where User_Name='" + lbluser.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("EditUserData.aspx");
    }
    protected void upcountry_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Country='" + ddlcountry.SelectedItem.ToString() + "'where User_Name='" + lbluser.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("EditUserData.aspx");
    }
    protected void upgender_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ada = new SqlDataAdapter("update UserData set Gender='" + ddlgender.SelectedItem.ToString() + "'where User_Name='" + lbluser.Text + "'", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        Response.Redirect("EditUserData.aspx");
    }

    protected void lbemal_Click(object sender, EventArgs e)
    {
        txtemail.Visible = true;
        upemail.Visible = true;
    
    }
    protected void lbmobino_Click(object sender, EventArgs e)
    {
        txtmobino.Visible = true;
        upmobino.Visible = true;
      
    }
    protected void lbage_Click(object sender, EventArgs e)
    {
        txtage.Visible = true;
        upage.Visible = true;
     
    }
    protected void lbcountry_Click(object sender, EventArgs e)
    {
        ddlcountry.Visible = true;
        ddlgender.Visible = true;
    
    }

    protected void lbgender_Click(object sender, EventArgs e)
    {
        ddlgender.Visible = true;
        upgender.Visible = true;
       
    }
}
