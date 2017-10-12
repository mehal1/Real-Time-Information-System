using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;

public partial class studpage : System.Web.UI.Page
{
    string a;
    String l, m, n, o, p, q, r, s, t, u, v, w, x, y, z,c,d;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studpageConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        // Label1.Text="hi" + Session["telep"];
        ////if (Page.PreviousPage != null)
        ////{
        ////    Label SourceLabel =
        ////        (Label)Page.PreviousPage.FindControl("telephoneno1");
        ////    if (SourceLabel != null)
        ////    {
        ////telephonenofrmstudreg.Text = SourceLabel.Text;
        ////    }
        ////}
        Response.Write(Session["telep"]);
        con.Open();

        string query = "SELECT count(*) FROM studpage WHERE Telephoneno = '" + Session["telep"] + "'";

        Response.Write(a);
        SqlCommand queryCommand = new SqlCommand(query, con);



        using (SqlDataReader reader = queryCommand.ExecuteReader())
        {

            while (reader.Read())
            {


                a = reader[0].ToString(); //This writes first column values for your all rows.
            }

        }
        con.Close();
        if (a == "1")
        {
            

           
                string query1 = "SELECT RollNo,cgpa1,cgpa2,cgpa3,cgpa4,cgpa5,cgpa6,cgpa7,cgpa8,BE,lkt,dkt,HSC,gap,SSC FROM studpage Where Telephoneno = '" + Session["tel"] + "'";
                //SqlDataReader dr = queryCommand.ExecuteReader();
              
                SqlCommand queryCommand1 = new SqlCommand(query1, con);
           
                con.Open();

                using (SqlDataReader reader1 = queryCommand1.ExecuteReader())
                {
                    while (reader1.Read())
                    {
                    rollno.Text= reader1[0].ToString();
                    TextBox1.Text = reader1[1].ToString();
                    TextBox1.Enabled = false;
                    TextBox2.Text = reader1[2].ToString();
                    TextBox2.Enabled = false;
                    TextBox3.Text = reader1[3].ToString();
                    TextBox3.Enabled = false;
                    TextBox4.Text = reader1[4].ToString();
                    TextBox4.Enabled = false;
                    TextBox5.Text = reader1[5].ToString();
                    TextBox5.Enabled = false;
                    TextBox6.Text = reader1[6].ToString();
                    TextBox6.Enabled = false;
                    TextBox7.Text = reader1[7].ToString();
                    TextBox8.Text = reader1[8].ToString();
                    BE.Text = reader1[9].ToString();
                    lkt.Text = reader1[10].ToString();
                    dkt.Text = reader1[11].ToString();
                    hsc.Text = reader1[12].ToString();
                    hsc.Enabled = false;
                    gap.Text = reader1[13].ToString();
                    ssc.Text = reader1[14].ToString();
                    ssc.Enabled = false;

                }
                }

            con.Close();
            ////using (SqlDataReader reader1 = queryCommand1.ExecuteReader())
            ////{
            ////    while (reader1.Read())
            ////    {
            ////        rollno.Text = reader1[0].ToString();
            ////        //This writes first column values for your all rows
            ////      //  TextBox1.Text = reader[1].ToString();
            ////      //  TextBox2.Text= reader[2].ToString();
            ////}

            


                //while (dr.Read())
                //{
                //    //Label1.Text = dr["RollNo"].ToString();
                //    TextBox1.Text = dr["cgpa1"].ToString();
                //    TextBox2.Text = dr["cgpa2"].ToString();
                //    TextBox3.Text = dr["cgpa3"].ToString();
                //}

            }
        }

    



    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {

            Response.Write(Session["telep"]);
            string query2 = "SELECT RollNo,cgpa1,cgpa2,cgpa3,cgpa4,cgpa5,cgpa6,cgpa7,cgpa8,BE,lkt,dkt,HSC,gap,SSC FROM verify Where Telephoneno = '" + Session["telep"] + "'";
            //SqlDataReader dr = queryCommand.ExecuteReader();

            SqlCommand queryCommand2 = new SqlCommand(query2, con);

            con.Open();

            using (SqlDataReader reader2 = queryCommand2.ExecuteReader())
            {
                while (reader2.Read())
                {
                    l = reader2[0].ToString();
                    m = reader2[1].ToString();

                    n = reader2[2].ToString();

                    o = reader2[3].ToString();

                    p = reader2[4].ToString();

                    q = reader2[5].ToString();

                    r = reader2[6].ToString();

                    s = reader2[7].ToString();
                    t = reader2[8].ToString();
                    u = reader2[9].ToString();
                    v = reader2[10].ToString();
                    w = reader2[11].ToString();
                    x = reader2[12].ToString();

                    c = reader2[13].ToString();
                 d = reader2[14].ToString();
                  
                }

            }
            Label1.Text = l;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
          
            if (l == rollno.Text && m == TextBox1.Text && n == TextBox2.Text && o == TextBox3.Text)
            {
                Response.Write("hi");
                if (p == TextBox4.Text && q == TextBox5.Text && r == TextBox6.Text && s == TextBox7.Text && t == TextBox8.Text && u == BE.Text && v == lkt.Text && w == dkt.Text && x == hsc.Text && c == gap.Text && d == ssc.Text)

                {
                    Response.Write("hello");
                    cmd.CommandText = "insert into studpage values('" + Session["telep"] + "','" + rollno.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + BE.Text + "','" + lkt.Text + "','" + dkt.Text + "','" + hsc.Text + "','" + gap.Text + "','" + ssc.Text + "')";

                    cmd.ExecuteNonQuery();

                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' Information you entered is successfully saved')", true);// Response.Write("Your Registration is successful");

                }
            }


            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You have entered Incorrect data')", true);


            }

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

      }





   
}