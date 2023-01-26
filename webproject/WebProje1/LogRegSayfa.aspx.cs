using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web;
using System.Web.UI.WebControls;
using System.Linq;

namespace WebProje1
{
    public partial class LogRegSayfa : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E3A4N5L\\EGEHAN;Initial Catalog=login;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("select * from LogVeritabanı where Username=@user and sifre=@sifre", baglanti);
                komut.Parameters.AddWithValue("@user", TextBox1.Text);
                komut.Parameters.AddWithValue("@sifre", TextBox2.Text);

                SqlDataReader oku = komut.ExecuteReader();

                if (oku.Read())
                {
                    Response.Redirect("~/Anasayfa.aspx");
                }
                else
                {
                    Response.Write("Hatalı");
                }
                baglanti.Close();
            }
        }
        protected void Button2_Click2(object sender, EventArgs e)
        {
            string a, b, c, d;
            a = TextBox3.Text;
            b = TextBox4.Text;
            c = TextBox5.Text;
            d = TextBox6.Text;

            if (c == d)
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("insert into LogVeritabanı ([Username],[email],[sifre],[sifret])" +
                 " VALUES ('" + a + "','" + b + "','" + c + "','" + d + "')", baglanti);


                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Write("Kayıt olma işlemi başarılı");

            }
            else
            {
                Response.Write("Hatalı Deneme");
            }
        }
    }
}