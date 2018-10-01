using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class UserRechargeHistory : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    StringBuilder table1 = new StringBuilder();
    StringBuilder table2 = new StringBuilder();
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
                Label1.Text = lbluser.Text;
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

        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [rechdata] where User_Name='"+lbluser.Text+"'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table border='1'>");
            table.Append("<tr><th>Date</th><th>Time</th><th>Mobile No</th><th>Oerator</th><th>Amount</th><th>Payment option</th><th>Status</th>");
            table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[6] + "</td>");
                    table.Append("<td>" + rd[7] + "</td>");
                    table.Append("<td>" + rd[1] + "</td>");
                    table.Append("<td>" + rd[2] + "</td>");
                    table.Append("<td>" + rd[4] + "</td>");
                    table.Append("<td>" + rd[5] + "</td>");
                    table.Append("<td>" + rd[8] + "</td>");
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
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select * from [addamount1] where User_Name='"+lbluser.Text+"'";
            cmd1.Connection = con1;
            SqlDataReader rd1 = cmd1.ExecuteReader();
            table1.Append("<table border='1'>");
            table1.Append("<tr><th>Date</th><th>Time</th><th>Amount</th><th>Payment Option</th><th>Bank Name</th><th>Card Type</th><th>Transaction Status</th>");
            table1.Append("</tr>");
            if (rd1.HasRows)
            {
                while (rd1.Read())
                {
                    table1.Append("<tr>");
                    table1.Append("<td>" + rd1[6] + "</td>");
                    table1.Append("<td>" + rd1[5] + "</td>");
                    table1.Append("<td>" + rd1[1] + "</td>");
                    table1.Append("<td>" + rd1[2] + "</td>");
                    table1.Append("<td>" + rd1[3] + "</td>");
                    table1.Append("<td>" + rd1[4] + "</td>");
                    table1.Append("<td>" + rd1[7] + "</td>");
                    

                    table1.Append("</tr>");
                }
            }
            table1.Append("</table>");
            PlaceHolder2.Controls.Add(new Literal { Text = table1.ToString() });

            rd1.Dispose();
            rd1.Close();

            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ToString();
            con2.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select * from [Creditdata1] where User_Name='" + lbluser.Text + "'";
            cmd2.Connection = con2;
            SqlDataReader rd2 = cmd2.ExecuteReader();
            table2.Append("<table border='1'>");
            table2.Append("<tr><th>Date</th><th>Time</th><th>Mobile no:</th><th>Operator</th><th>Circle</th><th>Amount</th><th>Payment Option</th><th>Bank Name</th><th>Card Type</th><th>Transaction Status</th>");
            table2.Append("</tr>");
            if (rd2.HasRows)
            {
                while (rd2.Read())
                {
                    table2.Append("<tr>");
                    table2.Append("<td>" + rd2[8] + "</td>");
                    table2.Append("<td>" + rd2[9] + "</td>");
                    table2.Append("<td>" + rd2[1] + "</td>");
                    table2.Append("<td>" + rd2[2] + "</td>");
                    table2.Append("<td>" + rd2[3] + "</td>");
                    table2.Append("<td>" + rd2[4] + "</td>");
                    table2.Append("<td>" + rd2[5] + "</td>");
                    table2.Append("<td>" + rd2[6] + "</td>");
                    table2.Append("<td>" + rd2[7] + "</td>");
                    table2.Append("<td>" + rd2[10] + "</td>");

                    table2.Append("</tr>");
                }
            }
            table2.Append("</table>");
            PlaceHolder3.Controls.Add(new Literal { Text = table2.ToString() });

            rd2.Dispose();
            rd2.Close();

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
}