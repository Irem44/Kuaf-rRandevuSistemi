<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisSayfasi.aspx.cs" Inherits="KRS.GirisSayfasi"  MasterPageFile="~/proje.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giris Sayfası</title>
      <style>
       
        #girisYap{
            border:5px groove grey;
            border-radius:10px;
            color:black;
            width:400px;
            height:500px;
            margin-top:130px;
            margin-left:570px;
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

        
        h3{
            margin-left:-30px;
            color:#505050;
        }

        #grs{
            margin-left:180px;
            background-color:#989898;
            width:100px;
            height:35px;
            margin-top:20px;
            border-radius:10px;

        }

        .input-field {
    background-color: transparent;
    height: 25px;
    width: 250px;
    border-radius: 10px;
    border: 2px solid grey;
    margin-left: -35px;
}

    .button-style {
        background-color: #989898;
        width: 100px;
        height: 35px;
        margin-left: 150px;
        margin-top: 5px;
        margin-bottom:20px;
        border-radius: 10px;
        border: none;
        font-size: 16px;
    }

    
    </style>
</head>
    <body background="screen/k6.jpg">
         <form id="form2" runat="server">
    <div id="girisYap">
            <h1 >GİRİS YAP</h1>
            <div style="margin-left: 100px; margin-top: 100px;">
            <h3 style="margin-top: 30px;">E-MAiL</h3>
            <asp:TextBox ID="emailTextBox" runat="server" CssClass="input-field"></asp:TextBox>
            <h3 style="margin-top: 35px;">ŞİFRE</h3>
            <asp:TextBox ID="sifreTextBox" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            <br /><br />
            <button id="sifremiunuttum" style="margin-left: 30px; margin-top: 10px; background-color: transparent; border: none; font-size: 16px;">Şifremi Unuttum</button><br/><br/>
            <asp:Button ID="grsButton" runat="server" Text="GİRİŞ YAP"  CssClass="button-style" OnClick="grsButton_Click" />
            

               </div>
           <!-- <div style="margin-left:100px;margin-top:100px;">
            <h3 style="margin-top:30px;">E-MAiL</h3>
            <input type="email" id="email" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:-35px;border-radius:10px;border:2px solid grey;">
            <h3 style="margin-top:35px;">ŞİFRE</h3>
            <input type="password" id="sifre" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:-35px;border-radius:10px;border:2px solid grey;"><br><br>
            <button id="sifremiunuttum" style="margin-left:30px;margin-top:10px;background-color:transparent;border:none;font-size:16px;">Şifremi Unuttum</button>
            <button id="grs">GİRİŞ YAP</button>
            </div>-->
               <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" style="margin-left:110px;"></asp:Label>

    </div>
     </form> 
</body>
</html>
    </asp:Content>
