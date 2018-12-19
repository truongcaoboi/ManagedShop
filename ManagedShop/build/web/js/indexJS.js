/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function insertType() {
    document.getElementById("addType").style.display = "block";
}

function choose(str, ele) {
    //alert(str);
    var lis = document.getElementsByClassName("row_data");
    for (i = 0; i < lis.length; i++) {
        lis[i].style.background = "azure";
    }
    document.getElementById("masp").value = str;
    ele.style.background = "#CCCCCC";
}

function insert() {
    document.getElementById("insert_form").style.display = "block";
}
function update() {
    var ma = document.getElementById("masp").value;
    if (ma == "") {
        alert("chua chon san pham");
    } else {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("update_form").innerHTML =
                        this.responseText;
                document.getElementById("update_form").style.display = "block";
                //alert("success");
            } else {
                // alert("failure");
            }
        };
        xhttp.open("GET", "updateForm.jsp?masp=" + ma, true);
        xhttp.send();

    }
}

function update1(str) {
    //alert("ok");
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("update_form").innerHTML =
                    this.responseText;
            document.getElementById("update_form").style.display = "block";
            //alert("success");
        } else {
             //alert("failure");
        }
    };
    xhttp.open("GET", "updateForm.jsp?masp=" + str, true);
    xhttp.send();


}

function closeUpdate() {
    document.getElementById("update_form").style.display = "none";
}

function detail() {
    var ma = document.getElementById("masp").value.trim();
    if (ma == "") {
        alert("chua chon san pham");
    } else {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("detail_form").innerHTML =
                        this.responseText;
                document.getElementById("detail_form").style.display = "block";
                //alert("success");
            } else {
                // alert("failure");
            }
        };
        xhttp.open("GET", "detailForm.jsp?masp=" + ma, true);
        xhttp.send();

    }
}

function filter() {
    var masp = document.getElementById("txtMaSP").value.trim();
    var tenSP = encodeURI(document.getElementById("txtTenSP").value.trim());
    var maMau = document.getElementById("maMau").value.substring(1);
    var kc = document.getElementById("kichCo").value;
    var ncc = document.getElementById("maNCC").value;
    var loai = document.getElementById("maLoai").value;
    //alert(masp+tenSP+kc+maMau+ncc+loai);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("table-data").innerHTML =
                    this.responseText;
            //alert("success");
        } else {
            // alert("failure");l
        }
    };
    xhttp.open("GET", "filterProduct.jsp?masp=" + masp + "&tenSP=" + tenSP + "&maMau=" + maMau + "&kc=" + kc + "&ncc=" + ncc + "&loai=" + loai, true);
    xhttp.send();
    //alert(ncc);
}


function chageColor() {
    var mau = document.getElementById("updateColor").value;
    document.getElementById("exampleColor").style.background = mau;
}

function chageColor1() {
    var mau = document.getElementById("updateColor1").value;
    document.getElementById("exampleColor1").style.background = mau;
}

function closeInsert() {
    document.getElementById("insert_form").style.display = "none";
}

function closeDetail() {
    document.getElementById("detail_form").style.display = "none";
}


function changeData() {
    //alert("ma");
    var count = 0;
    var list = document.getElementsByName("kichthuoc");
    for (i = 0; i < list.length; i++) {
        if (list[i].checked == true) {
            count++;
        }
    }
    if (count == 0) {
        alert("Phải lựa chọn kích cỡ");
        return false;
    }
    // alert("ok");
    document.getElementById("tenSPUpdate").value = encodeURI(document.getElementById("tenSPUpdate").value.trim());
    document.getElementById("motaSPUpdate").value = encodeURI(document.getElementById("motaSPUpdate").value.trim());
    //document.getElementById("hinhUpdate").value = encodeURI(document.getElementById("hinhUpdate").value);
    return true;
}

function changeData2() {
    var count = 0;
    var list = document.getElementsByName("kichthuoc");
    for (i = 0; i < list.length; i++) {
        if (list[i].checked == true) {
            count++;
        }
    }
    if (count == 0) {
        alert("Phải lựa chọn kích cỡ");
        return false;
    }

    document.getElementById("tenSPInsert").value = encodeURI(document.getElementById("tenSPInsert").value.trim());
    document.getElementById("motaSPInsert").value = encodeURI(document.getElementById("motaSPInsert").value.trim());
    //document.getElementById("hinhSPInsert").value = encodeURI(document.getElementById("hinhSPInsert").value);
    return true;
}

function closeInsType() {
    document.getElementById("addType").style.display = "none";
}
function changeData1() {
    //alert("hi");
    if (document.getElementById("invalid") == null) {
        //alert("ys");
        document.getElementById("txtType").value = decodeURI(document.getElementById("txtType").value.trim());
        return true;
    } else {
        //alert("no");
        //document.getElementById("txtType").value = decodeURI(document.getElementById("txtType").value);
        return false;
    }
    return true;
}

function changeImage(str) {
    document.getElementById("imageProduct").style.background = "url(" + str + ") no-repeat";
}

function changeImage1(str) {
    //alert("ok");
    document.getElementById("imageProduct1").style.background = "url(" + str + ") no-repeat";
}

function checkDuplicate(str,table,col) {
    document.getElementById("msg").innerHTML="";
    str=str.trim();
    str = encodeURI(str);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("msg").innerHTML = this.responseText;
        }
    }
    ;
    xhttp.open("GET", "CheckDuplicate?tenloai=" + str + "&table="+table+"&col="+col, true);
    xhttp.send();
}