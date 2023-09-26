<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div>
    <label for="maunen">
        Màu nền
    </label>
    <input type="text" name="maunen" id="maunen"></div>
<div><label for="mauchu">Màu chữ</label>
    <input type="text" name="mauchu" id="mauchu"></div>
<div><label for="tieude">Tiêu đề</label>
    <input type="text" name="tieude" id="tieude"></div>
<div><label for="trangthai">Trạng thái</label>
    <input type="text" name="trangthai" id="trangthai"></div>
<button id="btn">Thay Đổi</button>
</body>
<script>
    const maunen = document.getElementById('maunen');
    const mauchu = document.getElementById('mauchu');
    const tieude = document.getElementById('tieude');
    const trangthai = document.getElementById('trangthai');
    const btn = document.getElementById('btn');

    btn.addEventListener('click', change);
    function change() {
        const a = document.querySelectorAll('*');
        for (const aElement of a) {
            aElement.style.background = maunen.value;
            aElement.style.color = mauchu.value;
        }
        document.title = tieude.value;
        document.readyState = trangthai.value;
    }

</script>
</html>