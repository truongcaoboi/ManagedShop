/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function choose(ele, str) {
    document.getElementById("ma").value = str;
    var list = document.getElementsByClassName("row_data");
    for (i = 0; i < list.length; i++) {
        list[i].style.background = "azure";
    }
    ele.style.background = "#CCCCCC";
}

function filter() {
    var xhttp = new XMLHttpRequest();
    var ma = document.getElementById("txtMa").value.trim();
    var ten = document.getElementById("txtTen").value.trim();
    var thue = document.getElementById("txtThue").value.trim();
    var dc = document.getElementById("txtDC");
    var email = document.getElementById("txtEmail");
    var dt = document.getElementById("txtDT").value.trim();
    //alert(ma+ten+thue+dt);
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("table-data").innerHTML =
                    this.responseText;
            //alert("success");
        } else {
            //alert("failure");
        }
    };
    xhttp.open("GET", "filterSuplier.jsp?ma=" + ma + "&ten=" + ten + "&thue=" + thue + "&dt=" + dt, true);
    xhttp.send();
}

function insert() {
    document.getElementById("insert_ncc").style.display = "block";
}

function closeInsert() {
    document.getElementById("insert_ncc").style.display = "none";
}

function update() {
    var ma = document.getElementById("ma").value;
    if (ma == "") {
        alert("bạn chưa chọn nhà cung cấp để thực hiện");
    } else {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("update_ncc").innerHTML =
                        this.responseText;
                document.getElementById("update_ncc").style.display = "block";
                //alert("success");
            } else {
                //alert("failure");
            }
        };
        xhttp.open("GET", "updateSuplier.jsp?ma=" + ma, true);
        xhttp.send();
    }

}

function update1(str) {
   
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("update_ncc").innerHTML =
                        this.responseText;
                document.getElementById("update_ncc").style.display = "block";
                //alert("success");
            } else {
                //alert("failure");
            }
        };
        xhttp.open("GET", "updateSuplier.jsp?ma=" + str, true);
        xhttp.send();
    

}

function closeUpdate() {
    document.getElementById("update_ncc").style.display = "none";
}


function changeData() {

    if (document.getElementById("invalid") == null) {
        var tenIn = document.getElementById("txtTenInsert");
        var diachiIn = document.getElementById("txtDCInsert");
        var tenUp = document.getElementById("txtTenUpdate");
        var diachiUp = document.getElementById("txtDCUpdate");

        if (tenIn) {
            tenIn.value = encodeURI(tenIn.value);
        }
        if (diachiIn) {
            diachiIn.value = encodeURI(diachiIn.value);
        }
        if (tenUp) {
            tenUp.value = encodeURI(tenUp.value);
        }
        if (diachiUp) {
            diachiUp.value = encodeURI(diachiUp.value);
        }
        return true;
    }else{
        return false;
    }
}

function checkDuplicate(str, table, col) {
    document.getElementById("msg").innerHTML = "";
    str = encodeURI(str);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("msg").innerHTML = this.responseText;
        }
    }
    ;
    xhttp.open("GET", "CheckDuplicate?tenloai=" + str + "&table=" + table + "&col=" + col, true);
    xhttp.send();
}


