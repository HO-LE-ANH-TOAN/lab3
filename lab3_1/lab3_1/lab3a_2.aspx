<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab3a_2.aspx.cs" Inherits="lab3_1.lab3a_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>lab3a_2</title>
   
</head>
    <style>
    .div {
        height: 70px;
    }

    .green {
        background-color: green;

    }

    .red {
        background-color: red;
    }
        </style>
<body>
    <form id="form1" runat="server" method="post">
 <button id="btn">Đổi màu</button>
<p>Vị trí tính từ 1</p>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>
<div class="div"></div>

    </form>
</body>
     <script !src="">
     var btn = document.getElementById('btn');
     btn.addEventListener('click', () => {
         var div = document.getElementsByClassName('div');
         for (let i = 0; i < div.length; i++) {
             if ((i + 1) % 2 == 0) {
                 div[i].classList.add('red')
             } else {
                 div[i].classList.add('green')
             }
         }
     })
 </script>
</html>
