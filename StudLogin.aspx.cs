using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudLogin : System.Web.UI.Page
{
    string a;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["tel"] = TextBox1.Text.ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString);
        con.Open();

     

        string query = "SELECT password FROM password WHERE Telephoneno = '" + Session["tel"] + "'";

        // Create a SqlCommand object and pass the constructor the connection string and the query string.
        SqlCommand queryCommand = new SqlCommand(query, con);
        // Fetchtele[] allRecords = null;

        //using (var command = new SqlCommand(query, con))
        //{


        using (SqlDataReader reader = queryCommand.ExecuteReader())
        {

            while (reader.Read())
            {


                a = reader[0].ToString(); //This writes first column values for your all rows.
            }

        }
        con.Close();

        if (a != TextBox2.Text)
        {
            //Response.Redirect("StudRegister.aspx", false);
            //Context.ApplicationInstance.CompleteRequest();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Your password is incorrect.');location.href = 'StudLogin.aspx';", true);

        }
        else
        {

            Response.Redirect("studpage.aspx", false);
            Context.ApplicationInstance.CompleteRequest();

        }



    }
}