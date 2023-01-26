using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Reflection.Emit;

namespace WebProje1.Yonetim
{
    public partial class paylaskategori : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E3A4N5L\\EGEHAN;Initial Catalog=login;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into KategoriVeritabanı(adi) values(@adi)", baglanti);
            komut.Parameters.AddWithValue("@adi", TextBox1.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("paylaskategori.aspx");


        }
    }
}