$(function () {
    initValidator();
    /*var username = $("#username").val();
    if (username == "") {
        $("#username").focus();
    }
    else {
        $("password").focus();
    }*/
});

//表单校验
function initValidator() {
    //验证初始化
    $('#loginForm').validator({
        debug: 1,
        stopOnError: true,
        timely: 2,
        fields: {
            "username": {
                rule: "required;length[5~50];username",//
                tip: "请输入5-50个字符。",
                ok: "",
                msg: {required: "用户名必填！"}
            },
            "password": {
                rule: "required",
                tip: "",
                ok: "",
                msg: {required: "密码不能为空!"}
            }
        },
        //验证成功
        valid: function (form) {
            form.submit();
        },
        //验证失败
        invalid: function (form) {
            //按钮动画效果
            $('#submit_btn').stop().delay(100)
                .animate({left: 5}, 100)
                .animate({left: -5}, 100)
                .animate({left: 4}, 100)
                .animate({left: -4}, 100)
                .animate({left: -3}, 100)
                .animate({left: 0}, 100);
        }
    });
}