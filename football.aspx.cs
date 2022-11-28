using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class football : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button1_Click(object sender, EventArgs e)
    {
       SqlConnection conn1=new SqlConnection(ConfigurationManager.ConnectionStrings["mystring"].ConnectionString);
       conn1.Open();
       SqlCommand cmd = new SqlCommand("pro_FootBallMatch2", conn1);
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.CommandText = "pro_FootBallMatch2";
       cmd.Parameters.AddWithValue("@TeamName1", TextBox2.Text);
       cmd.Parameters.AddWithValue("@TeamName2", TextBox3.Text);
       cmd.Parameters.AddWithValue("@Status", DropDownList1.Text);
       cmd.Parameters.AddWithValue("@WinningTeam", TextBox4.Text);
       SqlDataAdapter sds = new SqlDataAdapter(cmd);
       DataSet ds = new DataSet();
       sds.Fill(ds);
       TextBox1.Text = "";
       TextBox2.Text = "";
       TextBox3.Text = "";
       DropDownList1.SelectedValue = "";
       TextBox4.Text = "";
  
       conn1.Close();
        Response.Write("<script> alert('Data inserted sucessfully'); </script>");

    }
}