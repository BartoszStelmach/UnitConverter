<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Length</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/general.css">

    <script>
        var input = 1;
        var select1 = 1;
        var select2 = 1;

        function inputfun() {
            input = document.getElementById("number").value;
            showResult();
        }

        function select1fun() {
            select1 = document.getElementById("select").value;
            showResult();
        }

        function select2fun() {
            select2 = document.getElementById("select2").value;
            showResult();
        }

        function showResult(){
            document.getElementById("result").innerHTML = input/select1*select2;
        }

        function swap(){
            var s1 = document.getElementById("select");
            var s1a = s1.options[s1.selectedIndex].value;
            var s2 = document.getElementById("select2");
            var s2a = s2.options[s2.selectedIndex].value;

            s1.value = s2a;
            s2.value = s1a;
            select1 = s2a;
            select2 = s1a;
            showResult();
        }
    </script>

</head>
<body>

<div id="bar">
    <div id="header">Unit Converter</div>
</div>

<div id="container">

    <div id="vertical-menu">
        <a href="/length" class="active">LENGTH</a>
        <a href="/weight">WEIGHT</a>
        <a href="/volume">VOLUME</a>
        <a href="/energy">ENERGY</a>
    </div>

    <div id="main_section">
        <div id="unit_text">LENGTH</div>

        <div id="from">From</div>

        <input onchange="inputfun()" id="number" type="number" value="1">

        <select onchange="select1fun()" id="select">
            <option value="1">METER</option>
            <option value="0.001">KILOMETER</option>
            <option value="1000">MILLIMETER</option>
            <option value="39.370079">INCH</option>
            <option value="3.280840">FOOT</option>
            <option value="0.000621">MILE</option>
            <option value="1.093613">YARD</option>
        </select>

        <button id="swap_button" onclick="swap()">SWAP</button>

        <div id="to">To</div>

        <p id="result">1</p>

        <select onchange="select2fun()" id="select2">
            <option value="1">METER</option>
            <option value="0.001">KILOMETER</option>
            <option value="1000">MILLIMETER</option>
            <option value="39.370079">INCH</option>
            <option value="3.280840">FOOT</option>
            <option value="0.000621">MILE</option>
            <option value="1.093613">YARD</option>
        </select>
    </div>


</div>














</body>
</html>
