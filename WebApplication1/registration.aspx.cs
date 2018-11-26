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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProperConnection"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Users where Email='" + Email.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists");
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProperConnection"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Users (UserID,FirstName,LastName,JobTitle,Email,PasswordHash,RoleID) values (@UserID ,@FirstName , @LastName , @JobTitle , @Email , @PasswordHash , @RoleID)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@UserID", newGUID.ToString());
                com.Parameters.AddWithValue("@FirstName", FirstName.Text);
                com.Parameters.AddWithValue("@LastName", LastName.Text);
                com.Parameters.AddWithValue("@JobTitle", JobTitle.Text);
                com.Parameters.AddWithValue("@Email", Email.Text);
                com.Parameters.AddWithValue("@PasswordHash", PasswordHash.Text);
                com.Parameters.AddWithValue("@RoleID", RoleID.SelectedItem.Text);

                com.ExecuteNonQuery();
                Response.Write("Registration successful");
            

                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}