var tags = ["五险一金", "年底双薪", "交通补助", "美女如云", "福利多多", "假期多多", "哈哈哈哈", "嘿嘿嘿嘿"];

$(document).ready(function () {
    $("#signup3Button").click(function () {
        $("#tagstr").val(tags());
    });
    for (var i = 0; i < tags.length; i++) {
        var $tag = $('<button class="btn btn-order">' + tags[i] + '</button>');

        $tag.appendTo($("#allTags"));
        $tag.click(function () {
            $("#threeTags").append($(this).removeClass("btn-order")
				.addClass("btn-new1").css("margin-right", "5px")
				.click(function () {
				    $("#allTags").append($(this).removeClass("btn-new1").addClass("btn-order").css("margin-right", "10"));
				}));
        });
    }
});

function tags() {
    var corpTags;
    var c = $("#threeTahs").children(".btn");
    for (var i = 0; i < c.length; i++) {
        corpTags += c[i]+'.';
    }
    return corpTags;
}