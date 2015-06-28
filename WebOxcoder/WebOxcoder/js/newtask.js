$(document).ready(function () {
    setEvent();
});

function setEvent() {
    var $add = $(".addButton");
    $add.click(function () {
        if ($(".delButton").length < 3) {
            $("#selected").append($(this).html("删除").removeClass("addButton").addClass("delButton").parent().parent().parent().parent().parent().parent().remove());
        } else {
            $("#savaButton").css("display", "inline");
        }
        setEvent();
    });
    var $del = $(".delButton");
    $del.click(function () {


        $("#question").append($(this).html("添加").removeClass("delButton").addClass("addButton").parent().parent().parent().parent().parent().parent().remove());
        if ($(".delButton").length < 3) {
            $("#savaButton").css("display", "none");
        }
        setEvent();
    });
}