using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;
using System.Drawing;

namespace WebApplication1
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                try
                {
                    string connstring = ConfigurationManager.ConnectionStrings["ProperConnection"].ConnectionString; // https://stackoverflow.com/questions/22113751/how-to-create-a-connection-string-in-asp-net-c-sharp

                    SqlConnection linkToDB = new SqlConnection(connstring);
                    linkToDB.Open();
                    string sqlText = @"SELECT [RoleID] FROM [Users] WHERE [RoleID] = @UserName";
                    SqlCommand dataAction = new SqlCommand(sqlText, linkToDB);
                    SqlParameter paramValue2 = new SqlParameter("@UserName", SqlDbType.VarChar);
                    paramValue2.Value = Context.User.Identity.Name;
                    dataAction.Parameters.Add(paramValue2);
                    var who = dataAction.ExecuteScalar();



                    string a = "Admin";
                    if (a != who.ToString())
                    {


                        Response.Redirect("~/Users");
                    }

                }

                catch
                {

                    Response.Redirect("~/default");

                }


            }

            else
                Response.Redirect("~/default");
        }

        void Get_Xml()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/App_Data/Viewings.xml"));
            if (ds != null && ds.HasChanges())
            {
                XmlGridView.DataSource = ds;
                XmlGridView.DataBind();
            }

            else
            {
                XmlGridView.DataBind();
            }
        }

        protected void XmlGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = XmlGridView.Rows[e.RowIndex].DataItemIndex;

            TextBox Name = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuName") as TextBox;
            TextBox Course = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuCourse") as TextBox;
            TextBox College = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuCollege") as TextBox;


            XmlGridView.EditIndex = -1;
            Get_Xml();

            DataSet ds = XmlGridView.DataSource as DataSet;
            ds.Tables[0].Rows[id]["number"] = Name.Text;
            ds.Tables[0].Rows[id]["date"] = Course.Text;
            ds.Tables[0].Rows[id]["hid"] = College.Text;
            ds.WriteXml(Server.MapPath("~/App_Data/viewings.xml"));
            Get_Xml();

        }

        protected void XmlGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }

        protected void XmlGridView_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void XmlGridView_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }
    }
}