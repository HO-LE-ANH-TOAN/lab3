<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab3_1.aspx.cs" Inherits="lab3_1.lab3_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>lab3a_1</title>
    <script language="JavaScript">
        var submitBtn = document.getElementById('btnSubmit')
        submitBtn.addEventListener('click', printToN)

        function printToN() {
            let valueInp = document.getElementById('value').value;
            let printArea = document.getElementById('print')
            printArea.innerText = "";
            for (let i = 1; i <= valueInp; i++) {
                printArea.innerHTML += i + " ";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            <input type="number" size="10" id="value" placeholder="Nhập số">
<button type="submit" id="btnSubmit">In</button>
<div class="text_print" id="print"></div>
        </div>
    </form>
</body>
</html>
