
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Microsoft.Win32;
//using System.Windows.Controls.Primitives;
using System.Net;
using System.Linq.Expressions;
using System.Text;
using System.Drawing;
using System.Configuration;

namespace WebProje1
{
    public partial class Bizeulasın : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                var from = "koddeneme98@gmail.com";
                var to = "koddeneme98@gmail.com";
                const string Password = "sebzeege1";
                string mail_subject = (TextBox3.Text).ToString();
               // string mail_message = "From " + TextBox1.Text + "\n";
                string mail_message = "From " + TextBox2.Text + "\n";
                //mail_message += "To " + TextBox2.Text + "\n";
                mail_message += "Konu  :" + TextBox3.Text + "\n";
                mail_message += "Mesaj " + TextBox4.Text + "\n";

                var smtp = new SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new System.Net.NetworkCredential(from, "kmaiodsbhuekelvx");
                    smtp.Timeout = 20000;

                }

                smtp.Send(from, to, mail_subject, mail_message);

                Response.Write("Teşekkürler");

                //TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

            }
            catch (Exception)
            {

                Response.Write("HATALI GİRİŞ");
            }
        }


    }
}