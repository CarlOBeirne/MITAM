using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class TicketSubmitForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Username.Text += Session["New"].ToString();
            }
            else
                Response.Redirect("login.aspx");
        }
        protected void SubmitTicket_Click(object sender, EventArgs e)
        {

        }
    }
}