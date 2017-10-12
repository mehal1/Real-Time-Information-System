using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Clockwork;
using System.Data.SqlClient;
using System.Configuration;

public partial class otppage : System.Web.UI.Page
{
    
    string otp = string.Empty;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["telep"] = telephoneno.Text.ToString();
        string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
        string numbers = "1234567890";

        string characters = numbers;

        characters += alphabets + small_alphabets + numbers;

        string otp = string.Empty;
        for (int i = 0; i < 10; i++)
        {
            string character = string.Empty;
            do
            {
                int index = new Random().Next(0, characters.Length);
                character = characters.ToCharArray()[index].ToString();
            } while (otp.IndexOf(character) != -1);
            otp += character;
        }
        Label1.Text=otp;

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into password values('" + telephoneno.Text + "','" + otp + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        
         API api = new API("42bfc956346c3dedd3f5a1910a3017b530cca2bf");
        string t = telephoneno.Text;
        string msg = "Welcome to Real Time Information System ! OTP for your Number is :" + otp ;
        //Response.Write(otp);
        //Response.Write(msg);
        try
        {
           
            SMSResult result = api.Send(new SMS { To = t, Message = msg });
            if (result.Success)
            {
                System.Diagnostics.Debug.WriteLine("SMS Sent to {0}, Clockwork ID: {1}", result.SMS.To, result.ID);
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("SMS to {0} failed, Clockwork Error: {1}{2}", result.SMS.To, result.ErrorCode, result.ErrorMessage);
            }
        }

        catch (APIException ex)
        {
            // You’ll get an API exception for errors
            // such as wrong username or password
            System.Diagnostics.Debug.WriteLine("API Exception: " + ex.Message);
        }
        catch (System.Net.WebException ex)
        {
            // Web exceptions mean you couldn’t reach the Clockwork server
            System.Diagnostics.Debug.WriteLine("Web Exception: " + ex.Message);
        }
        catch (ArgumentException ex)
        {
            // Argument exceptions are thrown for missing parameters,
            // such as forgetting to set the username
            System.Diagnostics.Debug.WriteLine("Argument Exception: " + ex.Message);
        }
        catch (Exception ex)
        {
            // Something else went wrong, the error message should help
            System.Diagnostics.Debug.WriteLine("Unknown Exception: " + ex.Message);

        }
            

    }  


    }
    

