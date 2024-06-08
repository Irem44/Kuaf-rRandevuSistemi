<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOlma.aspx.cs" Inherits="KRS.KayitOlma"%>
 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <title>KAYIT OL</title>
      <style>
         #ustkutu {
      
      width:1500px;
      height:50px;
      padding-top:20px;
      margin-left:5px;
      
      
  }

  #anasayfa {
      border: none;
      background-color: transparent;
      margin-top:100px;
      /*margin-left:70px;*/
      font-size: large;
      color:black;
      text-decoration: none;
      margin-right:20px;
      
      
  }

  #hakkımızda {
      border: none;
      background-color: transparent;
      margin-top:50px;
      /*margin-left:90px;*/
      font-size: large;
      color:black;
      text-decoration: none;
      margin-right:20px;
     
  }

  #galeri {
      border: none;
      background-color: transparent;
      margin-top:50px;
      /*margin-left:110px;*/
      font-size: large;
      color:black;
      text-decoration: none;
      margin-right:20px;
      
  }

  #giris {
      border: none;
      background-color: transparent;
      margin-top:50px;
      /*margin-left:130px;*/
      font-size: large; 
      color:black;
      text-decoration: none;
      margin-right:20px;
      
  }

  #kayyit {
      border: none;
      background-color: transparent;
      margin-top:50px;
      /*margin-left:150px;*/
      margin-right:20px;
      font-size: large; 
      color:black;
      text-decoration: none;
     
  }

  #randevu {
      border: none;
      background-color: transparent;
      margin-top:50px;
      /*margin-left:170px;*/
      font-size: large; 
      color:black;
      text-decoration: none;
      margin-right:20px;
      
  }
 #anaSayfa{
  margin-left:200px;
  font-size: large;
 }

 #hak{
  margin-left:75px;
  font-size: large;
 }

 #gal{
  margin-left:80px;
  font-size: large;
 }
 #gir{
  margin-left:85px;
  font-size: large;
 }

 #uyeOl{
  margin-left:90px;
  font-size: large;
 }
 #Randevu{
  margin-left:90px;
  font-size: large;
 }

 body{
   background-repeat: no-repeat;
   background-attachment: fixed;
   background-size: cover;
   /* Resmi sayfaya uygun boyutta tut */
   background-size: auto;
 }
 
  /* Metin gölgesini ayarla */
  a:hover {
  text-shadow: 0 0 10px #ffffff, 0 0 20px #ffffff, 0 0 30px #ffffff, 0 0 40px #c71585, 0 0 70px #c71585, 0 0 80px #c71585, 0 0 100px #c71585, 0 0 150px #c71585;
  }
        

        h1 {
            text-align: center;
            margin-top:30px;
            margin-left: -20px;
            font-style: italic;
            font-family: Georgia, 'Times New Roman', Times, serif;
            color: grey;
            text-shadow: 0 0 10px #ffffff, 0 0 20px #ffffff, 0 0 30px #ffffff, 0 0 40px #ff00ff, 0 0 70px #ff00ff, 0 0 80px #ff00ff, 0 0 100px #ff00ff, 0 0 150px #ff00ff; /* Metin gölgesini ayarla */
             
            
        }

        #uye {
            border: 5px groove grey;
            border-radius: 10px;
            color: black;
            width: 450px;
            height: 550px;
            margin-top: 85px;
            margin-left: 520px;
        }
        h3{
            margin-left:15px;
            color:#505050;
        }

        #kyd{
            margin-left:240px;
            background-color:#989898;
            width:100px;
            height:35px;
            margin-top:15px

        }

          .input-field {
            background-color: transparent;
            margin-top: -20px;
            height: 25px;
            width: 250px;
            margin-left: 15px;
            border-radius: 10px;
            border: 2px solid grey;
        }

        .button-style {
            border-radius: 10px;
            background-color: #989898;
            width: 100px;
            height: 35px;
            margin-top: 15px;
            margin-left: 240px;
        }
    </style>
</head>
    
<body background="screen/k6.jpg">
     <div  id="ustkutu">
     <i class="fa-solid fa-house" id="anaSayfa"></i>
     <a href="anaSayfa.aspx" id="anasayfa">Ana Sayfa</a>
     <i class="fa-solid fa-marker" id="hak"></i>
     <a href="hakkimizda.aspx" id="hakkımızda">Hakkımızda</a>
     <i class="fa-solid fa-image" id="gal"></i>
     <a href="galeri.aspx" id="galeri">Galeri</a>
     <i class="fa-solid fa-right-to-bracket" id="gir"></i>
     <a href="GirisSayfasi.aspx" id="giris">Giriş Yap</a>
     <i class="fa-solid fa-user-plus" id="uyeOl"></i>
     <a href="KayitOlma.aspx" id="kayyit">Kayıt Ol</a>
     <i class="fa-solid fa-clipboard" id="Randevu"></i>
     <a href="randevuAl.aspx" id="randevu">Randevu Al</a>
     <hr style="width:1100px;margin-right:200px">

 </div>
     <form id="form1" runat="server">
    <div id="uye">
        <h1 >KAYIT OL</h1>
         <br /> <br /> <br />
        <div style="margin-left:80px;">
         <asp:TextBox ID="txtAd" runat="server" placeholder="AD" CssClass="input-field"></asp:TextBox><br /><br /> <br />
            <asp:TextBox ID="txtSoyad" runat="server" placeholder="SOYAD" CssClass="input-field"></asp:TextBox><br /> <br /><br />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="E-MAiL" CssClass="input-field"></asp:TextBox><br /> <br /><br />
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" placeholder="ŞİFRE" CssClass="input-field"></asp:TextBox><br /> <br /><br /> 
            <asp:CheckBox ID="chkBeniHatirla" runat="server" Text="Beni Hatırla" /> <br /><br />
            <asp:Button ID="btnKayitOl" runat="server" Text="KAYIT OL" OnClick="btnKayitOl_Click" CssClass="button-style" />
             <br /><br />
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false" />
      
       <!-- <h3 style= "margin-top:20px">AD</h3>
        <input type="text" id="ad" runat="server" style="background-color: transparent;margin-top:-30px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;">
        <h3 style="margin-top:25px">SOYAD</h3>
        <input type="text" id="soyad" runat="server" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;">
        <h3 style="margin-top:30px;">E-MAiL</h3>
        <input type="email" id="email" runat="server" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;">
        <h3 style="margin-top:35px;">ŞİFRE</h3>
        <input type="password" id="sifre" runat="server" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;"><br><br>
        <input type="checkbox" id="benihatirla" runat="server" style="margin-left:15px;display: inline-block;margin-top:3px;">
        <span style="color: #505050 ;">Beni Hatırla</span><br><br>

       <button id="kyd" style="border-radius:10px" runat="server" onClick="kayitOl()">KAYIT OL</button>
        -->


        </div>

    </div>
  </form> 
    
</body>
</html>
    