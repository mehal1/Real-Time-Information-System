using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using Clockwork;

public partial class TPOpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
       


    }
    //public class Fetchtele
    //{
    //    public string tele { get; set; }

    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            //List<Fetchtele> student = new List<Fetchtele>();
            string query = "SELECT Telephoneno FROM studpage WHERE BE >= " + cgpa.Text + " AND HSC >= "+ hsc.Text + " AND SSC >= "+ ssc.Text + " AND lkt <= " + lkt.Text + " AND dkt <= " + dkt.Text + " AND gap <= "+ gap.Text;

            // Create a SqlCommand object and pass the constructor the connection string and the query string.
            SqlCommand queryCommand = new SqlCommand(query, con);
            // Fetchtele[] allRecords = null;

            //using (var command = new SqlCommand(query, con))
            //{
            con.Open();

            //SqlCommand cmd = new SqlCommand("select Telephoneno from studpage1", con);
            //SqlDataReader dr;
            
            //    dr = cmd.ExecuteReader();
            //    while (dr.Read())
            //    {
            //        student.Add(new Fetchtele()
            //        {

            //            tele = dr.GetString(dr.GetOrdinal("Teephoneno"))

            //        });

            //    }
            //    dr.Close();
            ArrayList ar = new ArrayList();
            int i = 0;
            using (SqlDataReader reader = queryCommand.ExecuteReader())
            {

                while (reader.Read())
                {

                  
                    ar.Add(reader[0].ToString()); //This writes first column values for your all rows.

                    i = i + 1;
                }
            }
            string[] a = ar.ToArray(typeof(string)) as string[];

            API api = new API("42bfc956346c3dedd3f5a1910a3017b530cca2bf");
           
            int l = a.Length;
          //  Response.Write(l);
            string b = msg.Text;
            for (i = 0; i < l; i++)
            {
                Response.Write(a[i] + " ");
                SMSResult result = api.Send(new SMS { To = a[i], Message = b });


            }
        }

        catch (Exception exp)
        {

            throw exp;
        }
        finally
        {

            con.Close();
        }
        

        /*
          String a = String.Empty;

          try
          {
              using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString))
              {
                  using (SqlCommand com = new SqlCommand("SELECT Telephone No FROM StudRegister WHERE ", con))
                  {
                      con.Open();
                      using (SqlDataReader reader = com.ExecuteReader())
                      {
                          while (reader.Read())
                          {
                              a = reader[0].ToString();

                          }
                      }
                  }
              }
          }
          catch
          {

          }
          con.Close();*/
       // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString);
        /*con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        
        cmd.ExecuteNonQuery();*/



       // Fetchtele[] allRecords = null;
       // string sql = @"SELECT Telephoneno FROM  studpage1";
        //WHERE BE >= " + cgpa + " AND HSC >= "+ hsc + " AND SSC >= "+ ssc + " AND lkt <= " + lkt + " AND dkt <= " + dkt + " AND gap <= "+ gap;
       // cmd.CommandText = "insert into studpage1 values('" + telephoneno.Text + "','" + rollno.Text + "','" + BE.Text + "','" + hsc.Text + "','" + ssc.Text + "','" + lkt.Text + "','" + dkt.Text + "','" + gap.Text + "')";
/*
        using (var command = new SqlCommand(sql, con))
{
    con.Open();
    using (var reader = command.ExecuteReader())
    {
        var list = new List<Fetchtele>();
        while (reader.Read())
            list.Add(new Fetchtele { tele = reader.GetString(0)});
        allRecords = list.ToArray();
                int i;
                for ( i=0; i <= 2; i++)
                {
                    Console.WriteLine(allRecords[i]);
                }
            }
}*/

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
         

        double p = double.Parse(TextBox1.Text);
        p = p / 10;
        double c = p + 0.75;
        cgpa.Text= Convert.ToString(c);

        cgpa.Enabled = false;
}
}