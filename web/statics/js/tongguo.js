//审核通过操作
function tongguo() {
    alert("审核通过操作");
    var id = $("input[name='id2']").val();
    alert(id)

    var data = {

        "id": id
    };
    // alert(softwareName);
    // alert(id);
    $.ajax({
        url: "/app/tongguo.html",
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

//审核不通过操作
function butongguo() {
    alert("审核不通过操作");
    var id = $("input[name='id2']").val();
    alert(id)

    var data = {

        "id": id
    };
    // alert(softwareName);
    // alert(id);
    $.ajax({
        url: "/app/butongguo.html",
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