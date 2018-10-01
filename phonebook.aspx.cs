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

public partial class phonebook : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
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
                wallamount.Visible = true;
                lblwallet.Visible = true;
                rs.Visible = true;
            }
        }
        lblphone.Text = lbluser.Text;
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
        
            
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from [phonebook] where User_Name='"+lbluser.Text+"'";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border='1'>");
                table.Append("<tr><th>Friend Name</th><th>Contact No</th>");
                table.Append("</tr>");
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        

                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });

                rd.Dispose();
                rd.Close();

            }

        }

    
    protected void btnadd_Click(object sender, EventArgs e)
    {


        if (lbluser.Visible != true)
        {
            Response.Write("<script>alert('plz login first')</script>");

        }
        else
        {
            try
            {


                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();

                String checkuser = "select count(*) from phonebook where Contact_No='" + txtfcontact.Text + "' ";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    lblcheckid.Text = "Number is Already added plz add another no";
                    lblcheckid.Visible = true;
                }
                else
                {

                    String insertQuery = "insert into phonebook(User_Name,Friend_Name,Contact_No) values(@username,@fname,@fcontact)";
                    cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@username", lbluser.Text);
                    cmd.Parameters.AddWithValue("@fname", txtfname.Text);
                    cmd.Parameters.AddWithValue("@fcontact", txtfcontact.Text);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Contact added succesully')</script>");
                    Response.Redirect("phonebook.aspx");
                }
                conn.Close();
            }
            catch (SqlException ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }
        }

    protected void lbllogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");
    }
}
