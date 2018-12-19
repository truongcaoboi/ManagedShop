/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function detail(str){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert(this.responseText);
            document.getElementById("detail_form").innerHTML=this.responseText;
            document.getElementById("detail_form").style.display="block";
        }
    };
    xhttp.open("GET", "detailConsumer.jsp?makh="+str, true);
    xhttp.send();
}

function changeData(){
    if (document.getElementById("invalid")) {
        return false;
    }
    var list = document.getElementsByClassName("nhaplieu");
    for (i = 0; i < list.length; i++) {
        list[i].value = encodeURI(list[i].value);
    }
    return true;
}

function closeDetail(){
    document.getElementById("detail_form").style.display="none";
}


