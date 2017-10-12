using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TPOLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a;
        a = TextBox1.Text;
        if(a=="tpologin")
        {
            Response.Redirect("Company.aspx",false);
            Context.ApplicationInstance.CompleteRequest();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('INCORRECT PASSWORD');location.href = 'TPOLogin.aspx';", true);

        }
    }
}