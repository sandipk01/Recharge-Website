using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

public partial class rechargedata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
       
       
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();

                String checkuser = "select count(*) from Recharge where Id='" + ddlrechid.SelectedItem.ToString() + "' ";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    lblcheckid.Text = "Id is already Selected";
                    lblcheckid.Visible = true;
                }
                else
                {

                    String insertQuery = "insert into Recharge(Id,Amount,Talktime,Validity,Description) values(@id,@amu,@talk,@vali,@dis)";
                    cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@id", ddlrechid.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@amu", txtamu.Text);
                    cmd.Parameters.AddWithValue("@talk", txttalk.Text);
                    cmd.Parameters.AddWithValue("@vali", txtvali.Text);
                    cmd.Parameters.AddWithValue("@dis", txtdis.Text);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Recharge detail inserted sucessfully')</script>");
                    Response.Redirect("rechargedata.aspx");
                }
                conn.Close();
            }
            catch (SqlException ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }
    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            var ddl = (DropDownList)sender;

            string itemSelected = ddl.SelectedValue;

            ddlrechid.Items.FindByValue(itemSelected).Enabled = false;
        }
    }
}