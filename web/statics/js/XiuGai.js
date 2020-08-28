//APP的修改功能
function xiugai() {
    alert("APP的修改功能");
    var id = $("input[name='id']").val();
    var softwareName = $("input[name='softwareName']").val();
    var APKName = $("input[name='APKName']").val();
    var supportROM = $("input[name='supportROM']").val();
    var interfaceLanguage = $("input[name='interfaceLanguage']").val();
    var softwareSize = $("input[name='softwareSize']").val();
    var appInfo = $("input[name='appInfo']").val();


    var data = {
        "softwareName": softwareName,
        "id": id,
        "APKName": APKName,
        "supportROM": supportROM,
        "interfaceLanguage": interfaceLanguage,
        "softwareSize": softwareSize,
        "appInfo": appInfo
    };
    alert(softwareName);
    alert(id);
    $.ajax({
        url: "/app/xiugai.html",
        method: "post",
        data: data,
        dataType: "json",
        success: function (data) {
            //状态判断
            if (data[0].status == "1") {
                alert(data[0].message);
            } else {
                alert("App的修改失败")
                // alert(data[0].message);
            }
        }
    })
}