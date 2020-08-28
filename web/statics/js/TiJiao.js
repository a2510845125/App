//APP的添加功能
function Tianjia_one() {
    alert("学生的添加功能")
    var softwareName = $("input[name='softwareName']").val();
    var APKName = $("input[name='APKName']").val();
    var supportROM = $("input[name='supportROM']").val();
    var interfaceLanguage = $("input[name='interfaceLanguage']").val();
    var softwareSize = $("input[name='softwareSize']").val();
    var downloads = $("input[name='downloads']").val();
    var appInfo = $("input[name='appInfo']").val();
    var status = $("input[name='status']").val();
    //var data = "userName="+userName;+"email="+email;
    var data = {
        "softwareName": softwareName,
        "APKName": APKName,
        "supportROM": supportROM,
        "interfaceLanguage": interfaceLanguage,
        "softwareSize": softwareSize,
        "downloads": downloads,
        "appInfo": appInfo,
        "status": status
    };
    alert(status);
    $.ajax({
        url: "/app/doAddAPP.html",
        method: "post",
        data: data,
        dataType: "json",
        success: function (data) {
            //状态判断
            alert("添加成功5")
            if (data[0].status == "1") {
                alert(data[0].message);
            } else {
                window.location.href = "";
                // alert(data[0].message);
            }
        }
    })
}