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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProperConnection"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Users where Email='" + Email.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                //conn.Open();
                string checkPasswordQuery = "select PasswordHash from Users where Email='" + Email.Text + "'";
                string getUserID = "select UserID from Users where Email='" + Email.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                SqlCommand userComm = new SqlCommand(getUserID, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                string userGuid = userComm.ExecuteScalar().ToString();
                if (password == PasswordHash.Text)
                {
                    Session["New"] = Email.Text;
                    Session["User"] = userGuid;
                    Session["Date"] = DateTime.Now.ToString();
                    Response.Write("Password is correct");
                    Response.Redirect("TicketSubmitForm.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                }
            }
            else
            {
                Response.Write("Username is not correct");
            }
            conn.Close();

        }
    }
}