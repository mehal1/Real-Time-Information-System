using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Manager : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    









    protected void Button5_Click(object sender, EventArgs e)
    {
        
        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE StudRegister SET " + TextBox2.Text +"='" + TextBox3.Text + "' WHERE [Roll No]='"+TextBox1.Text+"'";
          
            cmd.ExecuteNonQuery();

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
       ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student data is successfully updated.Please reload the page to see result')", true);
      
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

            try
            {  con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "delete from studpage where RollNo ='" + TextBox5.Text + "'";
                cmd.ExecuteNonQuery();

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
       ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student data is successfully deleted.Please reload the page to see result')", true);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "DELETE FROM StudRegister WHERE ([Roll No] = '" + TextBox4.Text + "')";
            //DELETE FROM StudRegister WHERE ([Roll No] = '12101A0021')
            cmd.ExecuteNonQuery();

            con.Close();
           
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
     ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student data is successfully deleted.Please reload the page to see result')", true);
    }

    protected void Button6_Click1(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE studpage SET " + TextBox7.Text + "='" + TextBox8.Text + "' WHERE RollNo='" + TextBox6.Text + "'";

            cmd.ExecuteNonQuery();

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());

        }
       ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student data is successfully updated.Please reload the page to see result')", true);
    }
}

