using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KRS
{
    public partial class randevuAl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void rButton_Click(object sender, EventArgs e)
        {
            string ad = adTextBox.Text.Trim();
            string soyad = soyadTextBox.Text.Trim();
            string telefon = telefonTextBox.Text.Trim();
            string saat = saatTextBox.Text.Trim();
            string tarih = tarihTextBox.Text.Trim();

            // Boş giriş kontrolü
            if (string.IsNullOrEmpty(ad) || string.IsNullOrEmpty(soyad) || string.IsNullOrEmpty(telefon) || string.IsNullOrEmpty(saat) || string.IsNullOrEmpty(tarih))
            {
                lblErrorMessage.Text = "Lütfen tüm alanları doldurun.";
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                return; // İşlemi durdur
            }

            string connectionString = ConfigurationManager.ConnectionStrings["KRSConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Aynı tarih ve saatte randevu var mı kontrolü
                    string query = "SELECT COUNT(*) FROM RANDEVU WHERE SAAT = @RandevuSaati AND TARIH = @RandevuTarihi";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@RandevuSaati", saat);
                        cmd.Parameters.AddWithValue("@RandevuTarihi", tarih);

                        int count = (int)cmd.ExecuteScalar();
                        if (count > 0)
                        {
                            lblErrorMessage.Text = "Lütfen başka bir tarih ve saat seçiniz.";
                            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                            return;
                        }
                    }

                    // Randevu oluşturma
                    string insertQuery = "INSERT INTO RANDEVU (AD, SOYAD, TELNO, SAAT, TARIH) VALUES (@Ad, @Soyad, @Telefon, @RandevuSaati, @RandevuTarihi)";
                    using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@Ad", ad);
                        cmd.Parameters.AddWithValue("@Soyad", soyad);
                        cmd.Parameters.AddWithValue("@Telefon", telefon);
                        cmd.Parameters.AddWithValue("@RandevuSaati", saat);
                        cmd.Parameters.AddWithValue("@RandevuTarihi", tarih);

                        cmd.ExecuteNonQuery();
                        lblErrorMessage.Text = "Randevu başarıyla oluşturuldu!";
                        lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                    }

                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = "Bir hata oluştu: " + ex.Message;
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
