<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderCode.aspx.cs" Inherits="WebOxcoder.coderCode" %>

<!DOCTYPE html>
<!-- saved from url=(0051)http://www.oxcoder.com/coding-page.action?reid=1176 -->
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<avalon ms-skip="1" class="avalonHide">X
		<style id="avalonStyle">
			.avalonHide {
				display: none!important
			}
		</style>
	</avalon>
	<title>猿圈 挑战</title>

	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<!-- END OF Bootstrap -->

	<!-- 控制左侧步骤和知识点控件的css -->
	<!-- Le styles -->
	<link type="text/css" href="js/libs/jquery-ui-1.10.0.custom.css" rel="stylesheet">
	<link type="text/css" href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link type="text/css" href="css/styler/max.css" rel="stylesheet">
	<link type="text/css" href="css/styler/tourist.css" rel="stylesheet">
	<link type="text/css" href="css/styler/code.css" rel="stylesheet">
	<!--[if IE 7]>
            <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
            <![endif]-->
	<!--[if lt IE 9]>
            <link rel="stylesheet" type="text/css" href="css/custom-theme/jquery.ui.1.10.0.ie.css"/>
            <![endif]-->

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->

	<!-- Le fav and touch icons -->
	<!--  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
            <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
            <link rel="shortcut icon" href="assets/ico/favicon.png"> -->
	<!-- my css	-->
	<link href="css/styler/ace.css" rel="stylesheet" media="screen">
	<!-- END OF my css -->
	<!-- Chang URLs to wherever Video.js files will be hosted -->
	<link href="css/styler/video-js.css" rel="stylesheet" type="text/css">
	<!-- video.js must be in the <head> for older IEs to work. -->
	<script src="js/code/video.js"></script>
	<!-- Unless using the CDN hosted version, update the URL to the Flash SWF -->
	<script>
	    videojs.options.flash.swf = "swf/video-js.swf";
	</script>
	<script src="js/libs/jquery-1.11.0.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/code/ace.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/code/ext-language_tools.js" type="text/javascript" charset="utf-8"></script>
	<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/code/avalon.js"></script>
	<!-- my js -->

	<script src="js/code/codingUI.js"></script>
	<script src="js/code/codingConstant.js"></script>
	<script src="js/code/codingStatistics.js"></script>
	<script src="js/code/codingProjectInfo.js"></script>
	<!-- END OF my js -->

	<script src="js/code/theme-idle_fingers.js"></script>
	<script src="js/code/mode-php.js"></script>
</head>

<body style="position: relative" avalonctrl="codingModel">
	<div class="navbar navbar-coding navbar-fixed-top" style="text-align: center; border-radius: 0; -webkit-border-radius: 0;">
		<div class="navbar-header">
			<a class="navbar-brand hidden-sm" href="coderTask.aspx" style="font-size: 13px;"><i class="fa fa-chevron-left" style="padding-right: 5px;"></i>返回</a>
		</div>
		<a href="coderHome.aspx" style="font-size: 20px; line-height: 50px;">oxcoder</a>
		<div class="top-bar-new" style="width: 260px; cursor: default;">


			<!-- <button id="btn-by-own" class="btn btn-primary btn-sm">自己写</button>
			
			<button id="btn-renew" class="btn btn-warning btn-sm">恢复</button> -->
			<label for="fontsize">字号</label>
			<select id="fontsize" style="color:black" size="1">
				<option value="10px">10px</option>
				<option value="11px">11px</option>
				<option value="12px">12px</option>
				<option value="13px">13px</option>
				<option value="14px" selected="selected">14px</option>
				<option value="16px">16px</option>
				<option value="18px">18px</option>
				<option value="20px">20px</option>
				<option value="24px">24px</option>
			</select>&nbsp;&nbsp;&nbsp;
			<button id="btn-run" class="btn btn-success btn-sm">运行</button>&nbsp;
			<button id="btn-submit" class="btn btn-primary btn-sm" onclick="window.location.href='coderTaskResult.aspx'">提交</button>

		</div>
	</div>
	<form style="display: none">
		<input id="input-pid" type="hidden" value="237">
		<input id="input-uid" type="hidden" value="2176">
		<input id="input-reid" type="hidden" value="1176">
		<input id="input-projectpath" type="hidden" value="/Users/oxcoder/challenge/Monkey/main.php">
	</form>
	<div class="editor-panel panel-primary div-left" style="padding-top: 50px; width: 300px;">
		<i class="fa fa-toggle-left" style="position:absolute;right:0;top:50px;font-size:17px;" id="button" onclick="hideleft()"></i>
		<div class="step-header page-header" style="padding: 15px; margin: 0;">
			<h3 id="testnew" class="text-primary">
				<span>美猴王</span> &nbsp;<small>php项目</small>
			</h3>
		</div>
		<div class="step-header page-header" style="padding: 15px; margin: 0;">
			<h4 id="clock">
				<i class="fa fa-clock-o" style="margin-right: 10px;"></i>倒计时：<font id="count-down" style="color: rgb(0, 0, 0);">434</font>
			</h4>
		</div>
		<!-- 步骤 -->
		<div class="panel-group" id="accordion">
			<section id="Section1">
				<div class="panel-group" id="accordion-1">

					<div class="panel panel-outline">
						<!-- /.panel-heading -->

						<div class="panel-heading">
							<h4 class="panel-title">项目需求</h4>
						</div>
						<div id="collapse" class="panel-collapse collapse in" style="height: auto;">
							<div class="panel-body">
								<p>美猴王算法的应用
								</p>
								<!--ms-if-->
							</div>
							<!-- /.panel-body -->
						</div>


					</div>
					<!-- /.panel -->

				</div>
			</section>
		</div>
	</div>
	<div class="div-right" style="top: 50px; left: 300px;">
		<i class="fa fa-toggle-right" style="position:absolute;left:0;top:0;font-size:17px;display:none;color:#fff;z-index:10;" id="showleft" onclick="showleft()"></i>
		<pre id="editor" class=" ace_editor ace_dark ace-idle-fingers" style="font-size: 14px; bottom: 0px;"></pre>
		<div class="maxsize-log" style="display: none;">
			<div id="div-minisize"></div>
		</div>
		<textarea class="text-log" readonly="" style="position: absolute; right: 0px; bottom: 0px; width: 49px; height: 34px; max-height: 225.333333333333px;">
		</textarea>
		<div class="minisize-log">
			<div id="div-maxsize"></div>
		</div>
	</div>

	<script>
	    var langTools = ace.require("ace/ext/language_tools");
	    var editor = ace.edit("editor");
	    editor.setTheme("ace/theme/idle_fingers");
	    editor.setOptions({
	        enableBasicAutocompletion: true,
	        enableLiveAutocompletion: true
	    });
	    // uses http://rhymebrain.com/api.aspx
	    editor.commands.on("afterExec", function (e) {
	        if (e.command.name == "insertstring" && /^[\\.\(.]$/.test(e.args)) {
	            editor.execCommand("startAutocomplete");
	        }
	    });
	    var rhymeCompleter = {
	        getCompletions: function (editor, session, pos, prefix, callback) {
	            console.log("prefix" + prefix);
	            $.getJSON("loadCodeNote.action?filePath=" + $("#input-projectpath").val(),
					function (wordList) {
					    console.log(wordList);
					    // wordList like [{"word":"flow","freq":24,"score":300,"flags":"bc","syllables":"1"}]
					    callback(null, wordList.map(function (ea) {
					        return {
					            name: ea.word,
					            value: ea.word,
					            score: ea.score,
					            meta: "rhyme"
					        }
					    }));
					})
	        }
	    }
	    langTools.addCompleter(rhymeCompleter);
	</script>
	<!-- Large modal -->
	<!-- Modal -->
	<div class="modal fade bs-example-modal-lg" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<!-- <h4 class="modal-title" id="myModalLabel">Modal title</h4> -->
				</div>
				<div class="modal-body">
					<center>
						<iframe height="498" width="510" src="" frameborder="0" allowfullscreen=""></iframe>
					</center>
				</div>
			</div>
		</div>
	</div>

	<!-- 等待编译 -->
	<!-- 编程时间到等待编译 -->
	<div class="modal fade bs-example-modal-sm" id="waiting" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">

					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="modal-body">
					<center>
						<img style="width:200px;height:150px" src="./猿圈 挑战_files/waiting.gif">
					</center>
					<!-- <center>
						<div ms-widget="loading" data-loading-type="spinning-bubbles"
					style="width: 200px; height: 120px; position: relative; zoom: 1;"></div>
					</center> -->
				</div>
				<div class="modal-footer">
					<button disabled="" id="btn-stop-compile" type="button" class="btn btn-danger"><span>(3)</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- </div> -->
	<!-- 编译超时的弹出框 -->
	<div class="modal fade bs-example-modal" id="modal-timeout" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="H1">程序编译超时</h4>
				</div>
				<div class="modal-body">编译超时，请检查程序逻辑</div>
				<div class="modal-footer">
					<a href="javascript:;" id="btn-close-timeout" type="button" class="btn btn-primary" data-dismiss="modal">关闭</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 选择在线展示还是下载安装 -->
	<div id="modal-confirm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="H2">确定提交吗？</h4>
				</div>
				<div class="modal-body">
					1.点击下方“提交”按钮，将会提交该项目作为最后评分依据，如果编译不通过，会极大的影响您本项目的得分。
					<br> 2.如果您还不想提交，请点击右上角关闭。
				</div>
				<div class="modal-footer">
					<!-- <button id="btn-online" type="button" class="btn btn-default"
						data-dismiss="modal">在线展示</button> -->
					<a id="btn-confirm-submit" type="button" class="btn btn-primary" data-dismiss="modal">&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;&nbsp;</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 挑战完成提示框 -->
	<div class="modal fade bs-example-modal-sm" id="modal-complete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">

					<h4 class="modal-title" id="H3"></h4>
				</div>
				<div class="modal-body">
					<div id="info-div"></div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- 编程时间到等待编译 -->
	<div class="modal fade bs-example-modal-sm" id="waiting-auto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">

					<h4 class="modal-title" id="H4">编译中，请稍候... ...</h4>
				</div>
				<div class="modal-body">
					<center>
						<img style="width:200px;height:150px" src="./猿圈 挑战_files/waiting.gif">
					</center>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- 在线展示Android项目 -->
	<div id="show-android" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="top:0;">
		<div class="modal-dialog" style="width: 410px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="H5">php项目项目展示</h4>
				</div>

				<div class="modal-body">
					<center>
						<!--ms-if-->
					</center>
					<!-- 暂无预览 -->

				</div>
			</div>
		</div>
	</div>
	<!-- 控制左侧标签的js -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/libs/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	    // Accordion
	    $("#menu-collapse").accordion({
	        header: "h3"
	    });
	    $("#menu-collapse1").accordion({
	        header: "h3"
	    });
	    $(document).ready(function () {
	        $(document).bind("contextmenu", function (e) {
	            return false;
	        });
	    });
	</script>
	<script type="text/javascript">
	    $("#preview").click(function () {
	        // 点击"编译运行"按钮
	        $('#show-android').modal({
	            keyboard: false,
	            backdrop: 'static',
	            show: true
	        });
	    });
	</script>
	<script type="text/javascript">
	    function hideleft() {
	        $(".div-left").css("left", "-300px");
	        $(".div-right").css("left", "0");
	        $("#showleft").show();
	    }

	    function showleft() {
	        $(".div-left").css("left", "0");
	        $(".div-right").css("left", "300px");
	        $("#showleft").hide();
	    }
	</script>
</body>

</html>
