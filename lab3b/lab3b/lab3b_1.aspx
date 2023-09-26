<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab3b_1.aspx.cs" Inherits="lab3b.lab3b_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
    * {
        padding: 0;
        margin: 0;
    }
    #clock{
        background-color: black;
        color: #0e60f5;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 5rem;
    }
</style>
<body>
    <form id="form1" runat="server" method="post">
        <div id="root">
    <div id="clock">
         </div>
         </div>
    </form>
</body>
    <script !src="">
    const clock = document.getElementById('clock');

    setInterval(() => {
        let currentDate = new Date();
        clock.innerHTML = `${currentDate.getHours() % 12 < 10 ? 0 + `${currentDate.getHours() % 12}` : currentDate.getHours() % 12} : ${currentDate.getMinutes() < 10 ? 0 + `${currentDate.getMinutes()}` : currentDate.getMinutes()} : ${currentDate.getSeconds() < 10 ? 0+ `${currentDate.getSeconds()}` : currentDate.getSeconds()} ${currentDate.getHours() > 12 ? 'PM' : 'AM'}`;
    }, 1000)
</script>
</html>
