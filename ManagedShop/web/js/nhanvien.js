/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function changeData() {
    if (document.getElementById("invalid")) {
        return false;
    }
    var list = document.getElementsByClassName("nhaplieu");
    for (i = 0; i < list.length; i++) {
        list[i].value = encodeURI(list[i].value);
    }
    return true;
}

function resetPass(str) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            alert("reset thành công");
        }
    };
    xhttp.open("GET", "ResetPass?manv=" + str, true);
    xhttp.send();
}

function updateRole(ma, role, ele) {
    if (role == 1) {
        role = 0;
    } else {
        role = 1;
    }
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            ele.value = role;
            alert("thay đổi thành công");
        }
    };
    xhttp.open("GET", "UpdateRole?manv=" + ma + "&role=" + role, true);
    xhttp.send();
}

function insert() {
    document.getElementById("addEmployee").style.display = "block";
}

function closeInsEmp() {
    document.getElementById("addEmployee").style.display = "none";
}

function checkDuplicate(str, table, col) {
    document.getElementById("msg").innerHTML = "";
    str = encodeURI(str);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert(this.responseText);
            document.getElementById("msg").innerHTML = this.responseText;
        }
    }
    ;
    xhttp.open("GET", "CheckDuplicate?tenloai=" + str + "&table=" + table + "&col=" + col, true);
    xhttp.send();
}