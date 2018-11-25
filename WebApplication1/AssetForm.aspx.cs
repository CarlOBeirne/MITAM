﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AssetForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProperConnection"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Assets (AssetID, UserID, AssetTitle, AssetNotes, AssetPurchaseDate, AssetTypeID, AssetSN) values (@AssetID, @UserID, @AssetTitle, @AssetNotes, @PurchaseDate, @AssetType, @AssetSN)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
           // com.Parameters.AddWithValue("@UserID", newGUID.ToString());
            com.Parameters.AddWithValue("@UserID", Session["User"].ToString());
            com.Parameters.AddWithValue("@AssetTitle", AssetTitle.Text);
            com.Parameters.AddWithValue("@AssetNotes", AssetNotes.Text);
            com.Parameters.AddWithValue("@PurchaseDate", PurchaseDate.Text);
            com.Parameters.AddWithValue("@AssetType", AssetType.Text);
            com.Parameters.AddWithValue("@AssetSN", AssetSN.Text);

            com.ExecuteNonQuery();

            conn.Close();
        }
    }
}