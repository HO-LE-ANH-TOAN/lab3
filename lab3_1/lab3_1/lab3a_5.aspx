<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab3a_5.aspx.cs" Inherits="lab3_1.lab3a_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">
      <div class="a">
    <label for="a">a:</label>
    <input type="text" name="a" id="a">
</div>
<div class="b">
    <label for="b">b:</label>
    <input type="text" name="b" id="b">
</div>
<div class="c">
    <label for="c">
        c:
    </label>
    <input type="text" name="c" id="c">
</div>
<button id="btn">Solve</button>
<div id="kq"></div>
    </form>
</body>
    <script !src="">
    const btn = document.getElementById('btn')
    btn.addEventListener('click', solve)

    function solve() {
        const a = document.getElementById('a').value;
        const b = document.getElementById('b').value;
        const c = document.getElementById('c').value;
        const kq = document.getElementById('kq');
        if (a == 0) {
            if (b == 0) {
                if (c == 0) {
                    kq.innerHTML = 'PT có vô số nghiệm';
                } else {
                    kq.innerHTML = 'PT vô nghiệm';
                }

            } else {
                kq.innerHTML = `Kết quả: ${-c / b}`;
            }
        } else {
            const delta = (b * b) - (4 * a * c);
            if (delta < 0) {
                kq.innerHTML = `Kết quả: PT vô nghiệm`;
            } else if (delta == 0) {
                kq.innerHTML = `Kết quả: ${-b / (2 * a)}`;
            } else {
                kq.innerHTML = `Kết quả: x1=${(-b + Math.sqrt(delta)) / (2 * a)}, x2 = ${(-b - Math.sqrt(delta)) / (2 * a)}`;
            }
        }
    }
</script>
</html>
