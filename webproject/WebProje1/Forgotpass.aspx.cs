using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Windows;


namespace WebProje1
{
    public partial class Forgotpass : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E3A4N5L\\EGEHAN;Initial Catalog=login;Integrated Security=True");
        string randomcode;
        public static string to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                string from, pass, messagebody;
                Random rand = new Random();
                randomcode = (rand.Next(999999)).ToString();
                MailMessage message = new MailMessage();
                to = (TextBox1.Text).ToString();
                from = "koddeneme98@gmail.com";
                pass = "sebzeege1";
 
                try
                {
                    //MessageBox.Show("Kod gönderildi");
                   // Response.Write("Kod Gönderildi");
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("select * from LogVeritabanı where email='" + TextBox1.Text +"'", baglanti);
                    SqlDataReader oku = komut.ExecuteReader();
                    if (oku.HasRows==true)
                    {
                        oku.Read();
                        string emaili = oku["email"].ToString();
                        string passwor = oku["sifre"].ToString();


                        messagebody = $"Your Verifycation Code is {passwor}";
                        message.To.Add(to);
                        message.From = new MailAddress(from);
                        message.Body = messagebody;
                        message.Subject = "Password code";
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                        smtp.EnableSsl = true;
                        smtp.Port = 587;
                        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                        smtp.Credentials = new System.Net.NetworkCredential(from, "kmaiodsbhuekelvx");
                        smtp.Send(message);
                        Response.Write("Kod Gönderildi");

                    }
                    else
                    {
                        Response.Write("Hatalı Deneme");

                    }

                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                    Response.Write(ex.Message);
                }
            }
        }
    }
}