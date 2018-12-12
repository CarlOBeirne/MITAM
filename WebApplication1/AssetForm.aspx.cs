using System;
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
            string insertQuery = "insert into Assets (UserID, AssetType, Brand, Model, AssetPurchaseDate, AssetSN, CPU, RAM, Storage) values (@User, @AssetType, @Brand, @Model, @PurchaseDate, @AssetSN, @CPU, @RAM, @Storage)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@User", UserID.SelectedItem.Text);
            com.Parameters.AddWithValue("@AssetType", AssetType.SelectedItem.Text);
            com.Parameters.AddWithValue("@Brand", AssetBrand.Text);
            com.Parameters.AddWithValue("@Model", AssetModel.Text);
            com.Parameters.AddWithValue("@PurchaseDate", PurchaseDate.Text);
            com.Parameters.AddWithValue("@AssetSN", AssetSN.Text);
            com.Parameters.AddWithValue("@CPU",AssetCPU.Text);
            com.Parameters.AddWithValue("@RAM", AssetRAM.Text);
            com.Parameters.AddWithValue("@Storage", AssetStorage.Text);


            com.ExecuteNonQuery();

            Response.Redirect("AssetForm.aspx");

            conn.Close();
        }

    }
}