using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace KRS
{
    public partial class KayitOlma : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa yüklendiğinde otomatik olarak yapılacak işlemler buraya gelebilir
        }

        protected void btnKayitOl_Click(object sender, EventArgs e)
        {
            string ad = txtAd.Text.Trim();
            string soyad = txtSoyad.Text.Trim();
            string email = txtEmail.Text.Trim();
            string sifre = txtSifre.Text.Trim();

            // Boş giriş kontrolü
            if (string.IsNullOrEmpty(ad) || string.IsNullOrEmpty(soyad) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(sifre))
            {
                lblErrorMessage.Text = "Lütfen tüm alanları doldurun.";
                lblErrorMessage.Visible = true;
                return; // İşlemi durdur
            }

            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["KRSConnectionString"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Users (AD, SOYAD, EMAIL, SIFRE) VALUES (@AD, @SOYAD, @EMAIL, @SIFRE)";
                    SqlCommand cmd = new SqlCommand(query, conn);

                    cmd.Parameters.AddWithValue("@AD", ad);
                    cmd.Parameters.AddWithValue("@SOYAD", soyad);
                    cmd.Parameters.AddWithValue("@EMAIL", email);
                    cmd.Parameters.AddWithValue("@SIFRE", sifre);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }

                // Başarılı kayıt olduktan sonra başka bir sayfaya yönlendirme
                Response.Redirect("anaSayfa.aspx");
            }
            catch (Exception ex)
            {
                // Hata mesajını kullanıcıya gösterme
                lblErrorMessage.Text = "Bir hata oluştu: " + ex.Message;
                lblErrorMessage.Visible = true;
            }
        }
    }
}
