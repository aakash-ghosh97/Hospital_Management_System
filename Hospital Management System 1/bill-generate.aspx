<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill-generate.aspx.cs" Inherits="Hospital_Management_System_1.bill_generate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
/* reset */

*
{
border: 0;
box-sizing: content-box;
color: inherit;
font-family: inherit;
font-size: inherit;
font-style: inherit;
font-weight: inherit;
line-height: inherit;
list-style: none;
margin: 0;
padding: 0;
text-decoration: none;
vertical-align: top;
}

/* content editable */

*[contenteditable] { border-radius: 0.25em; min-width: 1em; outline: 0; }

*[contenteditable] { cursor: pointer; }

*[contenteditable]:hover, *[contenteditable]:focus, td:hover *[contenteditable], td:focus *[contenteditable], img.hover { background: #DEF; box-shadow: 0 0 1em 0.5em #DEF; }

span[contenteditable] { display: inline-block; }

/* heading */

h1 { font: bold 100% sans-serif; letter-spacing: 0.5em; text-align: center; text-transform: uppercase; }

/* table */

table { font-size: 100%; table-layout: fixed; width: 100%; }
table { border-collapse: separate; border-spacing: 2px; }
th, td { border-width: 1px; padding: 0.5em; position: relative; text-align: left; }
th, td { border-radius: 0.25em; border-style: solid; }
th { background: #EEE; border-color: black; }
td { border-color:black; }

/* page */

html { font: 16px/1 'Open Sans', sans-serif; overflow: auto; }
html { background: #999; cursor: default; }

body { box-sizing: border-box; height: 13in; margin: 0 auto; overflow: hidden; padding: 0.5in; width: 14.2in; }
body { background: #FFF; border-radius: 1px; box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5); }

/* header */

header { margin: 0 0 3em; }
header:after { clear: both; content: ""; display: table; }

header h1 { background: #000; border-radius: 0.25em; color: #FFF; margin: 0 0 1em; padding: 0.5em 0; }
header address { float: left; font-size: 75%; font-style: normal; line-height: 1.25; margin: 0 1em 1em 0; }
header address p { margin: 0 0 0.25em; }
header span, header img { display: block; float: right; }
header span { margin: 0 0 1em 1em; max-height: 25%; max-width: 60%; position: relative; }
header img { max-height: 100%; max-width: 100%; }
header input { cursor: pointer; -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; height: 100%; left: 0; opacity: 0; position: absolute; top: 0; width: 100%; }

/* article */

article, article address, table.meta, table.inventory { margin: 0 0 3em; }
article:after { clear: both; content: ""; display: table; }
article h1 { clip: rect(0 0 0 0); position: absolute; }

article address { float: left; font-size: 125%; font-weight: bold; }

/* table meta & balance */

table.meta, table.balance { float: right; width: 36%; }
table.meta:after, table.balance:after { clear: both; content: ""; display: table; }

/* table meta */

table.meta th { width: 40%; }
table.meta td { width: 60%; }

/* table items */

table.inventory { clear: both; width: 100%; }
table.inventory th { font-weight: bold; text-align: center; }

table.inventory td:nth-child(1) { width: 26%; }
table.inventory td:nth-child(2) { width: 38%; }
table.inventory td:nth-child(3) { text-align: right; width: 12%; }
table.inventory td:nth-child(4) { text-align: right; width: 12%; }
table.inventory td:nth-child(5) { text-align: right; width: 12%; }

/* table balance */

table.balance th, table.balance td { width: 50%; }
table.balance td { text-align: right; }

/* aside */

aside h1 { border: none; border-width: 0 0 1px; margin: 0 0 1em; }
aside h1 { border-color: #999; border-bottom-style: solid; }

/* javascript */

.add, .cut
{
border-width: 1px;
display: block;
font-size: .8rem;
padding: 0.25em 0.5em;
float: left;
text-align: center;
width: 0.6em;
}

.add, .cut
{
background: #9AF;
box-shadow: 0 1px 2px rgba(0,0,0,0.2);
background-image: -moz-linear-gradient(#00ADEE 5%, #0078A5 100%);
background-image: -webkit-linear-gradient(#00ADEE 5%, #0078A5 100%);
border-radius: 0.5em;
border-color: #0076A3;
color: #FFF;
cursor: pointer;
font-weight: bold;
text-shadow: 0 -1px 2px rgba(0,0,0,0.333);
}

.add { margin: -2.5em 0 0; }

.add:hover { background: #00ADEE; }

.cut { opacity: 0; position: absolute; top: 0; left: -1.5em; }
.cut { -webkit-transition: opacity 100ms ease-in; }

tr:hover .cut { opacity: 1; }

@media print {
* { -webkit-print-color-adjust: exact; }
html { background: none; padding: 0; }
body { box-shadow: none; margin: 0; }
span:empty { display: none; }
.add, .cut { display: none; }
}

@page { margin: 0; }

input.MyButton {
 text-align:Center;
width: 80px;
padding: 20px;
cursor: pointer;
font-weight: bold;
font-size: 150%;
background: #3366cc;
color: #fff;
border: 1px solid #3366cc;
border-radius: 10px;
-moz-box-shadow:: 6px 6px 5px #999;
-webkit-box-shadow:: 6px 6px 5px #999;
box-shadow:: 6px 6px 5px #999;
}
input.MyButton:hover {
color: #ffff00;
background: #000;
border: 1px solid #fff;
}
.signout{
            text-align:left;
            margin-left:1250px;
            color:forestgreen;
        }
</style>
<html>
<head>
<meta charset="utf-8">
<title>BILL GENERATE </title>
<script>
    (function (document) {
        var
            head = document.head = document.getElementsByTagName('head')[0] || document.documentElement,
            elements = 'article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output picture progress section summary time video x'.split(' '),
            elementsLength = elements.length,
            elementsIndex = 0,
            element;

        while (elementsIndex < elementsLength) {
            element = document.createElement(elements[++elementsIndex]);
        }

        element.innerHTML = 'x<style>' +
            'article,aside,details,figcaption,figure,footer,header,hgroup,nav,section{display:block}' +
            'audio[controls],canvas,video{display:inline-block}' +
            '[hidden],audio{display:none}' +
            'mark{background:#FF0;color:#000}' +
            '</style>';

        return head.insertBefore(element.lastChild, head.firstChild);
    })(document);

    (function (window, ElementPrototype, ArrayPrototype, polyfill) {
        function NodeList() { [polyfill] }
        NodeList.prototype.length = ArrayPrototype.length;

        ElementPrototype.matchesSelector = ElementPrototype.matchesSelector ||
            ElementPrototype.mozMatchesSelector ||
            ElementPrototype.msMatchesSelector ||
            ElementPrototype.oMatchesSelector ||
            ElementPrototype.webkitMatchesSelector ||
            function matchesSelector(selector) {
                return ArrayPrototype.indexOf.call(this.parentNode.querySelectorAll(selector), this) > -1;
            };

        ElementPrototype.ancestorQuerySelectorAll = ElementPrototype.ancestorQuerySelectorAll ||
            ElementPrototype.mozAncestorQuerySelectorAll ||
            ElementPrototype.msAncestorQuerySelectorAll ||
            ElementPrototype.oAncestorQuerySelectorAll ||
            ElementPrototype.webkitAncestorQuerySelectorAll ||
            function ancestorQuerySelectorAll(selector) {
                for (var cite = this, newNodeList = new NodeList; cite = cite.parentElement;) {
                    if (cite.matchesSelector(selector)) ArrayPrototype.push.call(newNodeList, cite);
                }

                return newNodeList;
            };

        ElementPrototype.ancestorQuerySelector = ElementPrototype.ancestorQuerySelector ||
            ElementPrototype.mozAncestorQuerySelector ||
            ElementPrototype.msAncestorQuerySelector ||
            ElementPrototype.oAncestorQuerySelector ||
            ElementPrototype.webkitAncestorQuerySelector ||
            function ancestorQuerySelector(selector) {
                return this.ancestorQuerySelectorAll(selector)[0] || null;
            };
    })(this, Element.prototype, Array.prototype);



    function generateTableRow() {
        var emptyColumn = document.createElement('tr');

        emptyColumn.innerHTML = '<td><a class="cut">-</a><span contenteditable></span></td>' +
            '<td><span contenteditable></span></td>' +
            '<td><span data-prefix>$</span><span contenteditable>0.00</span></td>' +
            '<td><span contenteditable>0</span></td>' +
            '<td><span data-prefix>$</span><span>0.00</span></td>';

        return emptyColumn;
    }

    function parseFloatHTML(element) {
        return parseFloat(element.innerHTML.replace(/[^\d\.\-]+/g, '')) || 0;
    }

    function parsePrice(number) {
        return number.toFixed(2).replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1,');
    }



    function updateNumber(e) {
        var
            activeElement = document.activeElement,
            value = parseFloat(activeElement.innerHTML),
            wasPrice = activeElement.innerHTML == parsePrice(parseFloatHTML(activeElement));

        if (!isNaN(value) && (e.keyCode == 38 || e.keyCode == 40 || e.wheelDeltaY)) {
            e.preventDefault();

            value += e.keyCode == 38 ? 1 : e.keyCode == 40 ? -1 : Math.round(e.wheelDelta * 0.025);
            value = Math.max(value, 0);

            activeElement.innerHTML = wasPrice ? parsePrice(value) : value;
        }

        updateInvoice();
    }



    function updateInvoice() {
        var total = 0;
        var cells, price, total, a, i;



        for (var a = document.querySelectorAll('table.inventory tbody tr'), i = 0; a[i]; ++i) {

            cells = a[i].querySelectorAll('span:last-child');


            price = parseFloatHTML(cells[2]) * parseFloatHTML(cells[3]);

            total += price;


            cells[4].innerHTML = price;
        }


        cells = document.querySelectorAll('table.balance td:last-child span:last-child');


        cells[0].innerHTML = total;

        cells[2].innerHTML = document.querySelector('table.meta tr:last-child td:last-child span:last-child').innerHTML = parsePrice(total - parseFloatHTML(cells[1]));


        var prefix = document.querySelector('#prefix').innerHTML;
        for (a = document.querySelectorAll('[data-prefix]'), i = 0; a[i]; ++i) a[i].innerHTML = prefix;


        for (a = document.querySelectorAll('span[data-prefix] + span'), i = 0; a[i]; ++i) if (document.activeElement != a[i]) a[i].innerHTML = parsePrice(parseFloatHTML(a[i]));
    }


    function onContentLoad() {
        updateInvoice();

        var
            input = document.querySelector('input'),
            image = document.querySelector('img');

        function onClick(e) {
            var element = e.target.querySelector('[contenteditable]'), row;

            element && e.target != document.documentElement && e.target != document.body && element.focus();

            if (e.target.matchesSelector('.add')) {
                document.querySelector('table.inventory tbody').appendChild(generateTableRow());
            }
            else if (e.target.className == 'cut') {
                row = e.target.ancestorQuerySelector('tr');

                row.parentNode.removeChild(row);
            }

            updateInvoice();
        }

        function onEnterCancel(e) {
            e.preventDefault();

            image.classList.add('hover');
        }

        function onLeaveCancel(e) {
            e.preventDefault();

            image.classList.remove('hover');
        }

        function onFileInput(e) {
            image.classList.remove('hover');

            var
                reader = new FileReader(),
                files = e.dataTransfer ? e.dataTransfer.files : e.target.files,
                i = 0;

            reader.onload = onFileLoad;

            while (files[i]) reader.readAsDataURL(files[i++]);
        }

        function onFileLoad(e) {
            var data = e.target.result;

            image.src = data;
        }

        if (window.addEventListener) {
            document.addEventListener('click', onClick);

            document.addEventListener('mousewheel', updateNumber);
            document.addEventListener('keydown', updateNumber);

            document.addEventListener('keydown', updateInvoice);
            document.addEventListener('keyup', updateInvoice);

            input.addEventListener('focus', onEnterCancel);
            input.addEventListener('mouseover', onEnterCancel);
            input.addEventListener('dragover', onEnterCancel);
            input.addEventListener('dragenter', onEnterCancel);

            input.addEventListener('blur', onLeaveCancel);
            input.addEventListener('dragleave', onLeaveCancel);
            input.addEventListener('mouseout', onLeaveCancel);

            input.addEventListener('drop', onFileInput);
            input.addEventListener('change', onFileInput);
        }
    }

    window.addEventListener && document.addEventListener('DOMContentLoaded', onContentLoad);

</script>
</head>
<body style="        background: url(https://image.freepik.com/free-photo/blurred-interior-hospital-clinical-with-people-abstract-medical-background_1484-1882.jpg);
        background-size: 100% 140%;">
    <a href="home-page.aspx" class="signout">(Sign Out)</a>
<header>
<h1>BILL GENERATE </h1>
</header>
<article>
<table class="meta">
<tr>
<th><span content>BILL NO</span></th>
<td><span contenteditable>101138</span></td>
</tr>
<tr>
<th><span content>Date</span></th>
<td><span contenteditable>April 1, 2020</span></td>
</tr>
<tr>
<th><span content>Amount Due</span></th>
<td><span id="prefix" contenteditable>$</span><span>600.00</span></td>
</tr>
</table>
<table class="inventory">
<thead>
<tr>
<th><span content>Patient Id</span></th>
<th><span content>Consultation</span></th>
<th><span content>Rate</span></th>
<th><span content>StayIn</span></th>
<th><span content>Price</span></th>
</tr>
</thead>
<tbody>
<tr>
<td><a class="cut">-</a><span contenteditable>101123</span></td>
<td><span contenteditable>Experience Review</span></td>
<td><span data-prefix>$</span><span contenteditable>150.00</span></td>
<td><span contenteditable>4</span></td>
<td><span data-prefix>$</span><span>600.00</span></td>
</tr>
</tbody>
</table>
<a class="add">+</a>
<table class="balance">
<tr>
<th><span content>Total</span></th>
<td><span data-prefix>$</span><span>600.00</span></td>
</tr>
<tr>
<th><span content>Amount Paid</span></th>
<td><span data-prefix>$</span><span contenteditable>0.00</span></td>
</tr>
<tr>
<th><span content>Balance Due</span></th>
<td><span data-prefix>$</span><span>600.00</span></td>
</tr>
<input class="MyButton" type="button" value="Sumbit" onclick="window.location.href = 'http://www.hyperlinkcode.com/button-links.php'"/>
</table>

</article>

<aside>                                                                      
<h1><span content>Additional Notes</span></h1>
<div content>
<p>A finance charge of 1.5% will be made on unpaid balances after 30 days.</p>
</div>
</aside>
</body>
</html>
