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
    }
}