/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function changeData(){
    document.getElementById("tennv").value=encodeURI(document.getElementById("tennv").value);
    document.getElementById("tentinh").value=encodeURI(document.getElementById("tentinh").value);
    document.getElementById("tenhuyen").value=encodeURI(document.getElementById("tenhuyen").value);
    return true;
}

function check(str){
    if(document.getElementById("pass").value.trim()==document.getElementById("repass").value.trim()){
        if(str==document.getElementById("oldPass").value.trim()){
            return true;
        }else{
            alert("mật khẩu cũ không chính xác");
            return false;
        }
    }else{
        alert("Mật khẩu xác nhận không chính xác");
        document.getElementById("repass").focus();
        return false;
    }
}

function toggle_thongtin(){
    var x=document.getElementById("thongtincanhan");
    if(x.style.height=="0px"){
        x.style.height="350px";
    }else{
        x.style.height="0px";
    }
}

function toggle_vanchuyen(){
    var x=document.getElementById("chiphivanchuyen");
    if(x.style.height=="0px"){
        x.style.height="350px";
    }else{
        x.style.height="0px";
    }
}

function toggle_tintuc(){
    var x=document.getElementById("tintuc");
    if(x.style.height=="0px"){
        x.style.height="350px";
    }else{
        x.style.height="0px";
    }
}

function fillData(str){
    var ma=str.split(',')[0];
    var ten=str.split(',')[1];
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("huyen").innerHTML = this.responseText;
            document.getElementById("matinh").value=ma;
            document.getElementById("tentinh").value=ten;
        }
    };
    xhttp.open("GET", "abc.jsp?matinh=" + ma, true);
    xhttp.send();
}

function fillData1(str){
    var ma=str.split(',')[0];
    var ten=str.split(',')[1];
    var phi=str.split(',')[2];
    document.getElementById("mahuyen").value=ma;
    document.getElementById("tenhuyen").value=ten;
    document.getElementById("phi").value=phi;
}

