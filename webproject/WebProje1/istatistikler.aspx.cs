using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Http;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProje1
{
    public partial class istatistikler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E3A4N5L\\EGEHAN;Initial Catalog=login;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1Click(object sender, EventArgs e)
        {
 
            string a = TextBox1.Text;
            string b = TextBox2.Text;
            string c = TextBox3.Text;
            string d = TextBox4.Text;
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into soruVeritabani ([toplamsoru],[tytsoru],[aytsoru],[hedefsoru])" +
                 " VALUES ('" + a + "','" + b + "','" + c + "','" + d + "')", baglanti);

            komut.ExecuteNonQuery();
            baglanti.Close();
            

        }
    }
}