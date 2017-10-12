using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Threading;

public partial class StudRegister : System.Web.UI.Page
{
    string a;
    //public string telephone

    //{

    //    get { return telephoneno1.Text; }

    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "no.:" + Session["telep"];

        //if (Page.PreviousPage != null)
        //{
        //    TextBox SourceTextBox =
        //        (TextBox)Page.PreviousPage.FindControl("telephoneno");
        //    if (SourceTextBox != null)
        //    {
        //        telephoneno1.Text = SourceTextBox.Text;
        //    }
        //}


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
                       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = "insert into StudRegister values('" + name.Text + "','" + rollno.Text + "','" + Session["telep"] + "','" + email.Text + "','" + txtPassword.Text + "','" + address.Text + "','" + zipcode.Text + "')";

            cmd.ExecuteNonQuery();
            con.Close();
        
        con.Open();

        string query = "SELECT password FROM password WHERE Telephoneno = '" + Session["telep"] + "'";
        
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

            if (a != txtPassword.Text)
            { 
                //Response.Redirect("StudRegister.aspx", false);
                //Context.ApplicationInstance.CompleteRequest();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Your password is incorrect. Please note that you have to enter Your OTP sent to your mobile number');location.href = 'StudRegister.aspx';", true);

            }
            else
            {

                Response.Redirect("studpage.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }



        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

        //////Response.Write("Your Registration is successful");
        //////try
        //////{
        //////    Response.Redirect("studpage.aspx",false);
        //////}
        
    }






}