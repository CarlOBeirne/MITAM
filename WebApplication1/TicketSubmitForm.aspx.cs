using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class TicketSubmitForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Email.Text += Session["New"].ToString();
                UserID.Text += Session["User"].ToString();
                TicketDate.Text += Session["Date"].ToString();
            }
            else
                Response.Redirect("login.aspx");
        }
        protected void SubmitTicket_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProperConnection"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Tickets (UserID,TicketTitle,TicketDetails,SystemID,UrgencyID,TicketDate) values (@UserID ,@TicketTitle , @TicketDetails , @SystemID , @UrgencyID , @TicketDate)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
           com.Parameters.AddWithValue("@UserID", Session["User"].ToString());
            com.Parameters.AddWithValue("@TicketTitle", TicketTitle.Text);
            com.Parameters.AddWithValue("@TicketDetails", TicketDetails.Text);
            com.Parameters.AddWithValue("@SystemID", SystemID.Text);
            com.Parameters.AddWithValue("@UrgencyID", UrgencyID.Text);
            com.Parameters.AddWithValue("@TicketDate", Session["Date"].ToString());


            com.ExecuteNonQuery();

            Response.Redirect("TicketSubmitForm.aspx");
            conn.Close();
        }
    }
}