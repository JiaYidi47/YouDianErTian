<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderCode.aspx.cs" Inherits="WebOxcoder.coderCode" validateRequest="false"%>

<!DOCTYPE html>
<!-- saved from url=(0051)http://www.oxcoder.com/coding-page.action?reid=1176 -->
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>猿圈 挑战</title>

	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<!-- END OF Bootstrap -->
	<!-- Le styles -->
	<link type="text/css" href="js/libs/jquery-ui-1.10.0.custom.css" rel="stylesheet">
	<link type="text/css" href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link type="text/css" href="css/styler/max.css" rel="stylesheet">
	<link type="text/css" href="css/styler/tourist.css" rel="stylesheet">
	<link type="text/css" href="css/styler/style.css" rel="stylesheet">
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
	<!-- END OF my css -->
	<!-- Unless using the CDN hosted version, update the URL to the Flash SWF -->
	<script src="js/libs/jquery-1.11.0.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</head>
    <!-- oncontextmenu=self.event.returnValue=false onselectstart="return false" -->
<body style="position: relative" >
    <form id="Form1" runat="Server">
	<div class="navbar navbar-coding navbar-fixed-top" style="text-align: center; border-radius: 0; -webkit-border-radius: 0;">
		<div class="navbar-header">
			<a class="navbar-brand hidden-sm" href="coderTask.html" style="font-size: 13px;"><i class="fa fa-chevron-left" style="padding-right: 5px;"></i>返回</a>
		</div>
		<a href="coderHome.html" style="font-size: 20px; line-height: 50px;">oxcoder</a>
		<div class="top-bar-new" style="width: 260px; cursor: default;">
            <form>
			<asp:button ID="btnRun" class="btn btn-success btn-sm" data-toggle="modal" data-target="#waiting-auto" Text="运行" runat="Server" OnClick="btnRun_Click" />&nbsp;
			<asp:button ID="btnSubmit" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-complete" Text="提交" runat="Server" OnClick="btnSubmit_Click"/>
            </form>
		</div>
	</div>
	<div class="editor-panel panel-primary div-left">
		<div class="step-header page-header" style="padding: 15px; margin: 0;">
			<h3 id="testnew" class="text-primary" runat="server">
				<span>美猴王</span>&nbsp;<small>php项目</small>
			</h3>
		</div>
		<div class="step-header page-header" style="padding: 15px; margin: 0;">
			<h4 id="clock">
				<i class="fa fa-clock-o" style="margin-right: 10px;"></i>倒计时：<font id="countDown" runat="Server" style="color: rgb(0, 0, 0);">434</font>
			</h4>
		</div>
		<!-- 步骤 -->
		<div class="panel-group" id="accordion">
			<section id="Section1">
				<div class="panel-group" id="accordion-1">
					<div class="panel panel-outline">
						<div class="panel-heading">
							<h4 class="panel-title">项目需求</h4>
						</div>
						<div id="collapse" class="panel-collapse collapse in" style="height: auto;">
							<div class="panel-body">
								<p id="questionContent" runat="server">美猴王算法的应用
								</p>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<div class="div-right">
		<div class="up">
			<p style="display:none">
				<span id="oom">0</span>
			</p>
			<textarea id="linearea" runat="Server" class="linearea" cols="4" rows="23" wrap="off" readonly="1" onscroll="scroll(this ,'codearea')">01</textarea>
			<textarea id="codearea" runat="Server" class="codearea tabIndent" cols="81" rows="23" wrap="off" spellcheck="false" onkeyup="transfer()" onscroll="scroll(this ,'linearea')"></textarea>
		</div>

		<textarea id="result" runat="Server" class="compilearea" spellcheck="false" disabled="disabled">编译结果：</textarea>
	</div>


	<!-- 确认提交提示框 -->
	<div class="modal fade bs-example-modal-sm" id="modal-complete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="myModalLabel">题目提交</h3>
				</div>
				<div class="modal-body">
					<div id="info-div">
						<h4 class="modal-body">题目提交成功，即将进入下一题...</h4>
					</div>
				</div>
				<div class="modal-footer">
				</div>
			</div>
		</div>
	</div>
	<!-- 提交通过提示框 -->
	<div class="modal fade bs-example-modal-sm" id="modal-finish" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="H1">提交完成</h3>
				</div>
				<div class="modal-body">
					<div id="Div1">
						<h4 class="modal-body">代码提交完成</h4>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-info">下一题</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 编译等待提示框 -->
	<div class="modal fade bs-example-modal-sm" id="waiting-auto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="H2">编译中，请稍候... ...</h3>
				</div>
				<div class="modal-body">
					<center>
						<img style="width:120px;height:120px" src="img/waiting.gif">
					</center>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
	</div>
    </form>
	<!-- 控制左侧标签的js -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/libs/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
	<script src="js/libs/tabIndent.js"></script>
	<script type="text/javascript">
	    var count = 1;
	    $(document).ready(function () {
	        timedCount();
	        $("#codearea").focus();
	        tabIndent.renderAll();
	        $('#waiting-auto').modal({
	            keyboard: false,
	            show: false
	        });
	        $('#modal-complete').modal({
	            keyboard: false,
	            show: false
	        });

	        
	        document.onkeydown = function (event) {
	            var e = event || window.event || arguments.callee.caller.arguments[0];
	            if (e && e.keyCode == 13) {
	                $('#waiting-auto').modal('hide');
	            }
	        }
	    });

	    function fix(num, length) {
	        return ('' + num).length < length ? ((new Array(length + 1)).join('0') + num).slice(-length) : '' + num;
	    }

	    function transfer() {
	        var s = document.getElementById('linearea');
	        var t = document.getElementById('codearea');

	        var tValue = t.value.split("\n");
	        var sValue = [];

	        for (var i = 1; i < tValue.length + 1; i++) {
	            sValue.push(fix(i, 2) + "\n");
	        }

	        s.value = sValue.join("").toString();
	    }

	    function scroll(current, other) {
	        document.getElementById('oom').innerHTML = current.scrollTop;
	        document.getElementById(other).scrollTop = current.scrollTop;
	    }

    </script>

    <script type="text/javascript">
        var c = 5;
        var t;
        function timedCount() {
            $("#countDown").html(c);
 
            document.getElementById("<%=TextBox1.ClientID%>").value = c;
            if (c != 0) {
                c = c - 1;
                t = setTimeout("timedCount()", 1000);
            } else {
                stopCount();
            }
        }

        function stopCount() {
            clearTimeout(t)
        }
    </script>
</body>

</html>