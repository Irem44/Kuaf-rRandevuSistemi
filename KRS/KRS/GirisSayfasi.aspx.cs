using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace KRS
{
    public partial class GirisSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Sayfa yüklendiğinde otomatik olarak yapılacak işlemler buraya gelebilir
            }
        }

        protected void grsButton_Click(object sender, EventArgs e)
        {
            string email = emailTextBox.Text.Trim();
            string sifre = sifreTextBox.Text.Trim();

            // Boş giriş kontrolü
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(sifre))
            {
                lblErrorMessage.Text = "Lütfen tüm alanları doldurun.";
                return; // İşlemi durdur
            }

            try
            {
                // Veritabanı bağlantı dizesi
                string connectionString = ConfigurationManager.ConnectionStrings["KRSConnectionString"].ConnectionString;

                // SQL sorgusu
                string query = "SELECT COUNT(*) FROM Users WHERE EMAIL = @EMAIL AND SIFRE = @SIFRE";

                // Bağlantı ve sorgu için SqlConnection ve SqlCommand kullanma
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Parametreleri ekleme
                        cmd.Parameters.AddWithValue("@EMAIL", email);
                        cmd.Parameters.AddWithValue("@SIFRE", sifre);

                        // Bağlantıyı açma
                        conn.Open();

                        // Sorguyu çalıştırma ve sonucu alıp kullanma
                        int count = (int)cmd.ExecuteScalar();

                        // Eğer count 1 ise, veritabanında bu e-posta ve şifreyle eşleşen bir kayıt bulunmuştur
                        // Kullanıcı giriş yapabilir
                        if (count == 1)
                        {
                            Response.Redirect("AnaSayfa.aspx");
                        }
                        else
                        {
                            // Eğer count 0 ise, veritabanında böyle bir kayıt yoktur
                            // Kullanıcıya uyarı mesajı gösterilebilir
                            lblErrorMessage.Text = "Hatalı e-posta veya şifre!";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Hata mesajını kullanıcıya gösterme
                lblErrorMessage.Text = "Bir hata oluştu: " + ex.Message;
            }
        }
    }
}
