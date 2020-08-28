//APP的添加功能
function addByid() {
    alert("根据id新增APP功能")
    var appId = $("input[name='appId']").val();
    var versionNo = $("input[name='versionNo']").val();
    var versionSize = $("input[name='versionSize']").val();
    var publishStatus = $("input[name='publishStatus']").val();

    var data = {
        "appId": appId,
        "versionNo": versionNo,
        "versionSize": versionSize,
        "publishStatus": publishStatus
    };
    alert(appId);
    $.ajax({
        url: "/app/addByid.html",
        method: "post",
        data: data,
        dataType: "json",
        success: function (data) {
            //状态判断
            if (data[0].status == "1") {
                alert(data[0].message);
            } else {
                window.location.href = "";
                // alert(data[0].message);
            }
        }
    })
}