using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddBusData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
SqlConnection connection=new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
connection.Open();
SqlCommand cmd = new SqlCommand("pro_travel", connection);
cmd.CommandType = CommandType.StoredProcedure;
cmd.CommandText = "pro_travel";
cmd.Parameters.AddWithValue("@BoardingPoint", Dropdownlist1.Text);
cmd.Parameters.AddWithValue("@TravelDate", TextBox1.Text);
cmd.Parameters.AddWithValue("@Amount", TextBox2.Text);
cmd.Parameters.AddWithValue("@Rating", TextBox3.Text);
SqlDataAdapter sd = new SqlDataAdapter(cmd);
DataSet ds = new DataSet();
//dateformate
TextBox1.Text = DateTime.Now.ToString("dd/MM/yyyy");
sd.Fill(ds);

Dropdownlist1.Text = "";
TextBox1.Text = "";
TextBox2.Text = "";
TextBox3.Text = "";
connection.Close();
Response.Write("<script> alert('Bus Data inserted sucessfully'); </script>");

    }

}