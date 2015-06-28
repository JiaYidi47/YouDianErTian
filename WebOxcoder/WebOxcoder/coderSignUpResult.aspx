<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderSignUpResult.aspx.cs" Inherits="WebOxcoder.coderSignUpResult" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta property="wb:webmaster" content="caaa026a0027d2fc" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="renderer" content="webkit">
	<meta content="猿圈网是专业的技术测评平台,帮助企业高效省时地识别最优秀的技术人才。" name="description">
	<meta content="技术测评,IT测评,人才测评,互联网招聘,笔试,在线笔试,编程笔试,企业笔试,技术评测,北森,SAAS" name="keywords">

	<title>猿圈</title>

	<!-- Bootstrap core CSS -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Font Awesome CSS -->
	<link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- Bootstrap Switch -->
	<link href="css/libs/bootstrap-switch.min.css" rel="stylesheet">

	<!-- Bootstrap Select -->
	<link href="css/libs/bootstrap-select.min.css" rel="stylesheet">

	<!-- Summernote -->
	<link href="css/libs/summernote.css" rel="stylesheet">

	<link href="css/styler/style_new.css" rel="stylesheet">

</head>

<body>
	<!-- 引入header -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-sm" href="index.html" style="padding: 0;"><img src="img/wlogo_sm.png" style="max-height: 35px; margin: 7px;">
				</a>
			</div>
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li><a href="index.aspx">开发者</a>
                    </li>
                    <li><a href="index2.aspx">企业</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="signin.aspx">登录</a>
                    </li>
                    <li><a href="signup.aspx">注册</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<div id="content">
					<div class="row">


						<div class="form-group form-actions">
							<h3 class="grey">感谢您注册oxcoder</h3>
                            
							<span class="help-block">我们向您的邮箱发送了一封验证邮件，请点击邮件内的链接进行下一步操作.</span>
							
							</br>
							<br>
							

						</div>

					</div>
					<!-- /.row -->
				</div>
			</div>



		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/libs/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="js/libs/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="js/libs/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="js/libs/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="js/libs/bootstrap-filestyle.js"></script>

	<!-- Summernote -->
	<script src="js/libs/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="js/styler/script.js"></script>
	<!-- 引入footer -->


	<div class="afooter">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					© 2015 oxcoder.com <a href="">联系我们</a> <a href="" target="_blank">QQ交流群:77590762</a> <a href="" target="_blank">意见反馈</a>
				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
	    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
	    if (($(document.body).height() + 50) < $(window).height()) {
	        $(".afooter").addClass("navbar-fixed-bottom");
	    };
	</script>

</body>

</html>
<script type="text/javascript">
    var hash = {
        'qq.com': 'http://mail.qq.com',
        'gmail.com': 'http://mail.google.com',
        'sina.com': 'http://mail.sina.com.cn',
        '163.com': 'http://mail.163.com',
        '126.com': 'http://mail.126.com',
        'yeah.net': 'http://www.yeah.net/',
        'sohu.com': 'http://mail.sohu.com/',
        'tom.com': 'http://mail.tom.com/',
        'sogou.com': 'http://mail.sogou.com/',
        '139.com': 'http://mail.10086.cn/',
        'hotmail.com': 'http://www.hotmail.com',
        'live.com': 'http://login.live.com/',
        'live.cn': 'http://login.live.cn/',
        'live.com.cn': 'http://login.live.com.cn',
        '189.com': 'http://webmail16.189.cn/webmail/',
        'yahoo.com.cn': 'http://mail.cn.yahoo.com/',
        'yahoo.cn': 'http://mail.cn.yahoo.com/',
        'eyou.com': 'http://www.eyou.com/',
        '21cn.com': 'http://mail.21cn.com/',
        '188.com': 'http://www.188.com/',
        'foxmail.com': 'http://www.foxmail.com'
    };

    function go() {
        var url = document.getElementById("emailID").innerHTML.split("@")[1];
        var targetUrl = hash[url];

        if (targetUrl != null)
            window.open(targetUrl);
    }

    var url = document.getElementById("emailID").innerHTML.split("@")[1];
    var targetUrl = hash[url];
    if (targetUrl == null) {
        $(".btn-new1").hide();
    }
</script>