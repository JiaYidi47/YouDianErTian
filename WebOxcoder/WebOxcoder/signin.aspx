<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="WebOxcoder.signin" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 登录</title>

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="fonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Bootstrap Switch -->
<link href="css/libs/bootstrap-switch.min.css" rel="stylesheet">

<!-- Bootstrap Select -->
<link href="css/libs/bootstrap-select.min.css" rel="stylesheet">

<!-- Summernote -->
<link href="css/libs/summernote.css" rel="stylesheet">
<link href="css/libs/summernote-bs3.css" rel="stylesheet">

<!-- IcoMoon CSS -->
<link href="fonts/icomoon/style.css" rel="stylesheet">

<!-- Custom styles for this template -->
<!-- <link href="css/styler/style.css" rel="stylesheet" type="text/css"> -->


<!-- Sign In and Sign Up page styling -->
<link href="css/styler/signin.css" rel="stylesheet">
<link href="css/styler/style_new.css" rel="stylesheet">
<link href="css/libs/bootstrapvalidator.css" rel="stylesheet"/>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css">
    body {
        background-color: #4A90E2;
    }
    .panel-title img {
        max-height: 70px;
    }
    .footer-log{
        margin-bottom:20px;; text-align:center; color:#fff;
    }
    .footer-log a{
        color:#fff;
        padding-left: 10px;
        margin-left: 10px;
        border-left: 1.5px solid #fff;
    }
    .footer-log a:visited{
        color:#fff;
    }
</style>
</head>

<body>
	<div class="container" style="margin-top: 160px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
				<section id="middle">

					<div id="content" class="signin-page">

						<div class="panel-group" id="signin-page">

							<h3 class="panel-title" style="color: #fff;font-size: 2.4em;padding: 25px 25px 10px;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);"><img src="img/wlogo.png">猿圈登录</h3>
							<div class="panel panel-outline panel-no-padding"
								style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
									<div class="panel-body col-md-6">
										<form id="defaultForm" class="form-horizontal" runat="server">
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-envelope"></i></span>
                                                        <asp:TextBox runat="server" type="email" ID="login_email" name="login_email" class="form-control input-lg" placeholder="请输入邮箱地址"  />
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-key"></i></span> 
                                                        <asp:TextBox runat="server" type="password" ID="login_password" name="login_password" class="form-control input-lg" value=""  placeholder="请输入密码" />
													</div>
												</div>
											</div>
											<div class="col-xs-12">
												<input type="checkbox" checked="checked" name="rememberFlag" value="1"  onchange="this.value=(rememberFlag.checked)?1:0" style="margin-left: 20px;">记住我
												<span style="float: right;"> <a
													href="forgetPwd.html" style="color: #c0c0c0;"><small>忘记密码？</small></a>
												</span> <span class="help-block" id="hint1"
													style="margin-left: 20px;"></span> <span
													class="help-block has-error" id="hint2" style="margin-left: 20px;"> <small
													class="help-block"></small>
												</span>
											</div>
											<div class="col-xs-12">
											    <asp:Button class="btn btn-primary btn-lg" ID="login" runat="server" Style="margin-left: 20px; border-radius: 3px;" Text="登录" OnClick="login_Click" />
                                            </div>
											<div class="col-xs-12"></div>
										</form>
									</div>
									<!-- /.panel-body -->
									<div class="panel-body col-md-6">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												还没有帐号？<a href="signup.html">立即注册</a>
											</p>
											<img src="img/01.png" width="250px;" class="hidden-xs">
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->

						</div>
                    </div>
                    <!-- /#content -->
				</section>
			</div>
			<!-- /.col-md-10 -->

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->



	<footer class="col-md-12 footer-log">
		<div class="text-center">
			2015 youdiantian.com <a href="">联系我们</a> <a
				href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:144201138</a>
			<a href="">意见反馈</a>
		</div>
	</footer>


	<!-- jQuery -->
	<script src="js/libs/jquery-1.11.0.min.js"></script>


	<!-- Bootstrap core JavaScript -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="js/libs/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="js/libs/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="js/libs/bootstrap-filestyle.js"></script>

	<!-- Sparkline -->
	<script src="js/libs/jquery.sparkline.min.js"></script>

	<!-- Summernote -->
	<script src="js/libs/summernote.min.js"></script>


	<!-- Theme script -->
	<script src="js/styler/script.js"></script>

	<script src="js/libs/bootstrapvalidator.js"></script>

	<script type="text/javascript">
	    $(document).ready(function () {
	        $('#defaultForm').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                login_email: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入邮箱地址'
	                        },
	                        emailAddress: {
	                            message: '请输入正确的邮箱格式'
	                        }
	                    }
	                },
	                login_password: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入密码'
	                        }
	                    }
	                }
	            }
	        });
	    });
	    
	</script>

</body>
</html>
