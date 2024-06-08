<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="randevuAl.aspx.cs" Inherits="KRS.randevuAl"  MasterPageFile="~/proje.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Randevu Al</title>
     <style>
        #randevuAl{
            border:5px groove grey;
            border-radius:10px;
            color:black;
            width:500px;
            height:600px;
            margin-top:100px;
            margin-left:530px;
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

        #r{
            margin-left:230px;
            background-color:#989898;
            width:150px;
            height:35px;
            margin-top:5px;
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
            width: 180px;
            height: 35px;
            margin-left: 140px;
            margin-top: 10px;
            border-radius: 10px;
            border: none;
            font-size: 16px;
        }
        
              .error-message {
            margin-left:-20px;
            color:red;
        }
      

    </style>
</head>
  <body background="screen/k6.jpg">
         <form id="form3" runat="server">
    <div id="randevuAl">
        <h1 >RANDEVU AL</h1>
         <div style="margin-left:150px;margin-top:20px;">
                <h3 style="margin-top:20px;">AD</h3>
                <asp:TextBox ID="adTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                <h3 style="margin-top:23px">SOYAD</h3>
                <asp:TextBox ID="soyadTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                <h3 style="margin-top:26px;">TELEFON NUMARASI</h3>
                <asp:TextBox ID="telefonTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                <h3 style="margin-top:29px;">SAAT SEÇ</h3>
                <asp:TextBox ID="saatTextBox" runat="server" TextMode="Time" CssClass="input-field"></asp:TextBox>
                <br><br>
                <h3 style="margin-top:-15px;">TARİH SEÇ</h3>
                <asp:TextBox ID="tarihTextBox" runat="server" TextMode="Date" CssClass="input-field"></asp:TextBox>
                <br><br>
                <asp:Button ID="rButton" runat="server" Text="RANDEVU OLUŞTUR" CssClass="button-style" OnClick="rButton_Click" /><br/>
                <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message"></asp:Label>
   
         </div>
        <!--<div style="margin-left:100px;margin-top:20px;">
        <h3 style= "margin-top:20px">AD</h3>
        <input type="text" id="ad" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;">
        <h3 style="margin-top:23px">SOYAD</h3>
        <input type="text" id="soyad" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;">
        <h3 style="margin-top:26px;">Telefon Numarası</h3>
        <input type="tel" id="telefon" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;">
        <h3 style="margin-top:29px;">SAAT SEÇ</h3>
        <input type="time" id="saat" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;"><br><br>
        <h3 style="margin-top:15px;">TARİH SEÇ</h3>
        <input type="date" id="tarih" style="background-color: transparent;margin-top:-20px;height:25px;width:250px;margin-left:15px;border-radius:10px;border:2px solid grey;"><br><br>
        <button id="r" >RANDEVU OLUŞTUR</button>
        </div>-->
        </div>
              </form> 
      </body>
</html>
     </asp:Content>
