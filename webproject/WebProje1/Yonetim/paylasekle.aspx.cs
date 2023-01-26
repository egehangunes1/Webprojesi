using System;
using System.IO;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace WebProje1.Yonetim
{
    public partial class paylasekle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E3A4N5L\\EGEHAN;Initial Catalog=login;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
               if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                    {
                        string resimadı = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/resim" + resimadı));
                        Label1.Text = resimadı.ToString();


                        baglanti.Open();
                        SqlCommand komut = new SqlCommand("insert into PaylasimVeritabanı (isim,aciklama1,kategoriID,resim) values(@isim,@aciklama,@kategoriID,@resim)", baglanti);
                        komut.Parameters.AddWithValue("@isim", TextBox1.Text.ToString());
                        komut.Parameters.AddWithValue("@aciklama", TextBox2.Text.ToString());
                    komut.Parameters.AddWithValue("kategoriID", DropDownList2.SelectedValue);
                    komut.Parameters.AddWithValue("@resim", Label1.Text.ToString());
                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    Response.Redirect("paylasekle.aspx");
                    }
                    else
                    {

                        Label1.Text = "lütfen bir png veya jpeg dosyası yükleyin";
                    }
                }

                else
                {
                    Label1.Text = "lütfen bir dosya yükleyin";

                }
            }
        }
    }