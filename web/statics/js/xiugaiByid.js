//根据id修改 修改版本
function xiugai9() {
    alert("修改 修改版本");
    var softwareSize = $("input[name='softwareSize99']").val();
    var appInfo = $("input[name='appInfo99']").val();
    var id = $("input[name='id9']").val();
    alert("软件id"+id);
    alert("软件大小"+softwareSize);
    alert("简介"+appInfo)
    alert(softwareSize);

    var data = {
        "id": id,
        "softwareSize": softwareSize,
        "appInfo": appInfo
    };

    $.ajax({
        url: "/app/xiugaiByid.html",
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