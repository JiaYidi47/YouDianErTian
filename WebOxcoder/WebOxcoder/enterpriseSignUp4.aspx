<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterpriseSignUp4.aspx.cs" Inherits="WebOxcoder.enterpriseSignUp4" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 企业完善企业信息</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Bootstrap Switch -->
    <link href="css/libs/bootstrap-switch.min.css" rel="stylesheet">

    <!-- Bootstrap Select -->
    <link href="css/libs/bootstrap-select.min.css" rel="stylesheet">

    <!-- IcoMoon CSS -->
    <link href="fonts/icomoon/style.css" rel="stylesheet">

    <!-- Summernote -->
    <link href="css/libs/summernote.css" rel="stylesheet">
    <link href="css/libs/summernote-bs3.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/styler/style.css" rel="stylesheet" type="text/css">

    <!-- Max css -->
    <link href="css/styler/style_new.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/libs/bootstrapvalidator.css" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>

<body>
    <!-- 引入header -->


    <div class="navbar navbar-default navbar-fixed-top" onload=validateSession()>
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand hidden-sm" href="enterpriseTask.aspx" style="padding: 0;"><img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
                </a>
            </div>
            <div class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li><a href="enterpriseTask.aspx">挑战管理</a>
                    </li>
                    <li><a href="enterpriseRecommend.aspx">人才推荐</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="text">有点儿甜小组</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="enterprisePayment.aspx">账户余额</a>
                            </li>
                            <li><a href="enterpriseInfo.aspx">企业信息</a>
                            </li>
                            <li><a href="enterpriseChangePwd.aspx">修改密码</a>
                            </li>
                            <li><a href="index.aspx">注销</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
	<script type="text/javascript">
	    function validateSession() {
	        var k = 2
	        if (k == null) {
	            location.replace("session-timeout-log.htm");
	        }
	    }
	</script>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<div id="content">
					<div class="row">
						<img src="img/corp_step3.png">

						<div class="form-group form-actions" style="margin-top: 40px;">
							<p class="grey">您已填写完企业基本信息，现在可以去新增挑战邀请了呦~~</p>
							<a href="enterpriseNewTask1.aspx">
								<button type="button" class="btn btn-new1 btn-lg" style="border-radius: 3px;">新增挑战邀请</button>
							</a>

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
					© 2015 oxcoder.com <a href="">联系我们</a> <a href="">QQ交流群:77590762</a> <a href="">意见反馈</a>
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