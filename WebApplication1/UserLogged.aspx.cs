using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UserLogged : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Welcome.Text += Session["New"].ToString();
            }
            else
                Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}