using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DataCardRechargePayment : System.Web.UI.Page
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
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        SqlCommand com1;
        String str1;
        conn1.Open();
        str1 = "select * from DataCardCredit where User_Name='" + lbluser.Text + "'";
        com1 = new SqlCommand(str1, conn1);
        SqlDataReader reader1 = com1.ExecuteReader();
        if (reader1.Read())
        {
            lblopr.Text= reader1["Operator"].ToString();
            lbldatcno.Text = reader1["Datacardno"].ToString();
            lblCircle.Text = reader1["Circle"].ToString();
            lbltamu.Text = reader1["Amount"].ToString();
            lblpayoption.Text = reader1["Paymentoption"].ToString();
            lbltypecard.Text= reader1["Typecard"].ToString();
            reader1.Close();
            conn1.Close();

        }

    }
    protected void btnmakepay_Click(object sender, EventArgs e)
    {
        conn.Open();

        String insertQuery = "insert into DataCardCreditPayment(User_Name,Operator,Datacardno,Circle,Amount,Paymentoption,Typecard,Date,Time,Status) values(@username,@opr,@datacno,@circle,@amu,@pay,@tcard,@date,@time,@status)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@username", lbluser.Text);
        cmd.Parameters.AddWithValue("@opr", lblopr.Text);
        cmd.Parameters.AddWithValue("@datacno", lbldatcno.Text);
        cmd.Parameters.AddWithValue("@circle", lblCircle.Text);
        cmd.Parameters.AddWithValue("@amu", lbltamu.Text);
        cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
        cmd.Parameters.AddWithValue("@tcard", lbltypecard.Text);
        cmd.Parameters.AddWithValue("@date", lbldate.Text);
        cmd.Parameters.AddWithValue("@time", lbltime.Text);
        cmd.Parameters.AddWithValue("@status", lblsuc.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Recharge is Done')</script>");

        Server.Transfer("Manage.aspx");
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {

        Session.RemoveAll();
        lbluser.Visible = false;
        lblwelcome.Visible = false;
        btnlogout.Visible = false;
        Server.Transfer("Home_Page.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        conn.Open();

        String insertQuery = "insert into DataCardCreditPayment(User_Name,Operator,Datacardno,Circle,Amount,Paymentoption,Typecard,Date,Time,Status) values(@username,@opr,@datacno,@circle,@amu,@pay,@tcard,@date,@time,@status)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@username", lbluser.Text);
        cmd.Parameters.AddWithValue("@opr", lblopr.Text);
        cmd.Parameters.AddWithValue("@datacno", lbldatcno.Text);
        cmd.Parameters.AddWithValue("@circle", lblCircle.Text);
        cmd.Parameters.AddWithValue("@amu", lbltamu.Text);
        cmd.Parameters.AddWithValue("@pay", lblpayoption.Text);
        cmd.Parameters.AddWithValue("@tcard", lbltypecard.Text);
        cmd.Parameters.AddWithValue("@date", lbldate.Text);
        cmd.Parameters.AddWithValue("@time", lbltime.Text);
        cmd.Parameters.AddWithValue("@status", lblunsuc.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Transaction is failed')</script>");

        Server.Transfer("Manage.aspx");
    }
}