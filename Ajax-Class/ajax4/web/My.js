function getXmlHttpObject(){ var xmlHttpRequest;
//创建 ajax 引擎对象
    if(window.ActiveXObject){ xmlHttpRequest=new ActiveXObject("Microsoft.XMLHTTP");
    }else{xmlHttpRequest=new XMLHttpRequest();
    }
    return xmlHttpRequest;
}
function $(id){
    return document.getElementById(id);
}