<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab3a_4.aspx.cs" Inherits="lab3_1.lab3a_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>lab3a_4</title>
</head>
<body>
    <form id="form1" runat="server">
       <button value="red">Do</button>
<button value="blue">Xanh</button>
    </form>
</body>
    <script !src="">

    const btn = document.querySelectorAll('button');
    for (const btnElement of btn) {
        btnElement.addEventListener('click',changColor);
    }
    function changColor(e) {
        let a = e.target.value;
        document.querySelectorAll("body")[0].style.backgroundColor = a;

    }
</script>
</html>
