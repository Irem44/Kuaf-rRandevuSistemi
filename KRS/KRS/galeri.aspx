<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="galeri.aspx.cs" Inherits="KRS.galeri"   MasterPageFile="~/proje.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head >
    
    <title>Galeri</title>
      <style>
        h1 {
            font-style: italic;
            text-align: center;
            word-spacing: 10px;
            color: #505050;
        }

        #genel {
            border: 2px solid #505050;
            width: 1100px;
            height: 2000px;
            margin-left:215px;




        }

        body {
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            /* Resmi sayfaya uygun boyutta tut */
            background-size: auto;
        }

        #genel div {
            border: 2px solid #505050;
            width: 180px;
            height: 200px;
            display: inline-block;
            margin-right: 50px;
            border-radius: 5px;


        }

        img {
            width: 180px;
            height: 200px;


        }
    </style>
</head>

   <body background="screen/galeri5.jpg">

    <h1>Foto Galeri</h1>

    <div id="genel">
        <h3 style="margin-top:20px;margin-left:20px;color: #505050;font-style: italic;"> Trend Düz Saçlar</h3>
        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s1.jpeg" alt="bulunamadı s1" style="object-fit: cover;">
        </div>

        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s2.jpeg" alt="bulunamadı s2" style="object-fit: cover;">

        </div>

        <div style="margin-top:20px;margin-left:30px">
            <img src="screen/s3.jpeg" alt="bulunamadı s3" style="object-fit: cover;">
        </div>

        <div style="margin-top:20px;margin-left:30px">
            <img src="screen/s4.jpeg" alt="bulunamadı s4" style="object-fit: cover;">
        </div>

        <div style="margin-top:20px;margin-left:30px">
            <img src="screen/s5.jpeg" alt="bulunamadı s5" style="object-fit: cover;">

        </div>

        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s6.jpeg" alt="bulunamadı s6" style="object-fit: cover;">

        </div>

        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s7.jpeg" alt="bulunamadı s7" style="object-fit: cover;">

        </div>
         
        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s8.jpeg" alt="bulunamadı s8" style="object-fit: cover;">

        </div>

        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s9.jpeg" alt="bulunamadı s9" style="object-fit: cover;">

        </div>

        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s10.jpeg" alt="bulunamadı s10" style="object-fit: cover;">

        </div>

        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s11.jpeg" alt="bulunamadı s11" style="object-fit: cover;">

        </div>
        
        <div style="margin-top:30px;margin-left:30px">
            <img src="screen/s12.jpeg" alt="bulunamadı s12" style="object-fit: cover;">

        </div>
        
    </div>


</body>
</html>
   </asp:Content>
