/**
 * Created by jianglei on 2015/12/04.
 */
var scripts = document.getElementsByTagName("script");
var scriptPath = "./";
for (var i = 0; i < scripts.length; i++) {
    var src = scripts[i].src;
    var index = src.indexOf("js/import.js");
    var path = "";
    if (-1 < index) {
        scriptPath = src.substring(0, index);
        break;
    }
}
document.write('<link rel="stylesheet" href="'+ scriptPath + 'css/uikit.min.css" />');
document.write('<script language="javascript" src="'+scriptPath+'js/jquery-1.9.0.min.js"></script>');
document.write('<script language="javascript" src="'+ scriptPath + 'js/uikit.min.js"></script>');
