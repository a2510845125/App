// //APP的添加功能
// function Tianjia_one() {
//     alert("APP的添加操作")
//     var softwareName = $("input[name='softwareName']").val();
//     var APKName = $("input[name='APKName']").val();
//     var supportROM = $("input[name='supportROM']").val();
//     var interfaceLanguage = $("input[name='interfaceLanguage']").val();
//     var softwareSize = $("input[name='softwareSize']").val();
//     var downloads = $("input[name='downloads']").val();
//     var appInfo = $("input[name='appInfo']").val();
//     var status = $("input[name='status']").val();
//     var categoryLevel1 = $('#categoryLevel1 option:selected') .val();
//     var flatformId = $('#flatformId option:selected') .val();
//     var categoryLevel2 = $('#categoryLevel2 option:selected') .val();
//     var categoryLevel3 = $('#categoryLevel3 option:selected') .val();
//     var a_logoPicPath = document.getElementById("#a_logoPicPath").value
//     alert(a_logoPicPath)
//     // alert("一级菜单的值是"+categoryLevel1)
//     // alert("所属平台"+flatformId)
//     // alert("二级菜单"+categoryLevel2)
//     // alert("三级菜单"+categoryLevel3)
//     //var data = "userName="+userName;+"email="+email;
//     var data = {
//         "softwareName": softwareName,
//         "APKName": APKName,
//         "supportROM": supportROM,
//         "interfaceLanguage": interfaceLanguage,
//         "softwareSize": softwareSize,
//         "downloads": downloads,
//         "appInfo": appInfo,
//         "status": status,
//         "categoryLevel1": categoryLevel1,
//         "flatformId": flatformId,
//         "categoryLevel2": categoryLevel2,
//         "categoryLevel3": categoryLevel3,
//         "a_logoPicPath": a_logoPicPath
//     };
//     $.ajax({
//         url: "/app/doAddAPP.html",
//         method: "post",
//         data: data,
//         dataType: "json",
//         success: function (data) {
//             //状态判断
//             alert("添加成功")
//             if (data[0].status == "1") {
//                 alert(data[0].message);
//             } else {
//                 window.location.href = "";
//                 // alert(data[0].message);
//             }
//         }
//     })
// }