/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function filter() {
    //alert("ok");
    var ma = document.getElementById("makh").value.trim();
    var ten = document.getElementById("tenkh").value.trim();
    ten = encodeURI(ten);
    var trangthai = document.getElementById("trangthai").value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert(this.responseText);
            document.getElementById("table-data").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "filterHoadon.jsp?makh=" + ma + "&tenkh=" + ten + "&trangthai=" + trangthai, true);
    xhttp.send();
}

function update1(str) {
    //alert(str);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert(this.responseText);
            document.getElementById("chitiethoadon").innerHTML = this.responseText;
            document.getElementById("chitiethoadon").style.display = "block";
        }
    };
    xhttp.open("GET", "detailReceipt.jsp?mahoadon=" + str, true);
    xhttp.send();
}

function delete1(str, ele) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            location.reload();
        }
    };
    xhttp.open("GET", "DeleteHD?mahoadon=" + str, true);
    xhttp.send();
}

function detail_product(str) {

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert(this.responseText);
            //alert(this.responseText);
            document.getElementById("chitietsanpham").innerHTML = this.responseText;
            document.getElementById("chitietsanpham").style.display = "block";
        }
    };
    xhttp.open("GET", "detailForm.jsp?masp=" + str, true);
    xhttp.send();
}

function detail_consumer(str) {
    //alert(str);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert(this.responseText);
            //alert(this.responseText);
            document.getElementById("chitietkhachhang").innerHTML = this.responseText;
            document.getElementById("chitietkhachhang").style.display = "block";
        }
    };
    xhttp.open("GET", "detailConsumer.jsp?makh=" + str, true);
    xhttp.send();
}

function closeDetailHD() {
    document.getElementById("chitiethoadon").style.display = "none";
}

function closeDetail() {
    document.getElementById("chitietkhachhang").style.display = "none";
    document.getElementById("chitietsanpham").style.display = "none";
}

function changeImage1(str) {
    //alert("ok");
    document.getElementById("imageProduct1").style.background = "url(" + str + ") no-repeat";
}

function changeData() {
    //alert("ok");
    document.getElementById("ghichu").value = encodeURI(document.getElementById("ghichu").value);
    return true;
}
