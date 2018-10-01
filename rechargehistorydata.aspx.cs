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


public partial class rechargehistorydata : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    StringBuilder table1 = new StringBuilder();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            lbluser.Text = Session["new"].ToString();
        }
        string str3;
        SqlCommand com3;
        int count3 = 0;
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
        str3 = "select count(*) from rechdata  where User_Name='"+ddlusername.Text+"'";
        com3 = new SqlCommand(str3, conn3);
        conn3.Open();
        count3 = Convert.ToInt16(com3.ExecuteScalar());
        lbluserwall.Text= ddlusername.Text +"Recharge Count:" + count3;
        conn3.Close();
        
            string str6;
            SqlCommand com6;
            int count6 = 0;
            SqlConnection conn6 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
            str6 = "select count(*) from rechdata where Amount>='" + ddlamount1.Text + "' and Amount<='" + ddlamount2.Text +"' ";
            com6 = new SqlCommand(str6, conn6);
            conn6.Open();
            count6 = Convert.ToInt16(com6.ExecuteScalar());
            lbwallet.Text= "Wallet Recharge Count:" + count6;
            conn6.Close();

        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
      
    }
    protected void LinkButton6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Rechargehistorycredit.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("datauser.aspx");
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