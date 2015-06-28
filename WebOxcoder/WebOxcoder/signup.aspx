<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebOxcoder.signup" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 注册</title>

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
    <link href="css/libs/summernote-bs3.css" rel="stylesheet">

    <!-- IcoMoon CSS -->
    <link href="fonts/icomoon/style.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <!-- <link href="css/styler/style.css" rel="stylesheet" type="text/css"> -->


    <!-- Sign In and Sign Up page styling -->
    <link href="css/styler/signin.css" rel="stylesheet">
    <link href="css/styler/style_new.css" rel="stylesheet">

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
        
        .nav-pills>li.active>a,
        .nav-pills>li.active>a:hover,
        .nav-pills>li.active>a:focus {
            color: #4A90E2;
            background-color: #fffff;
            border: 1px solid #4A90E2;
            border-radius: 0;
        }
        
        .nav-pills>li.active>a,
        .nav-pills>li.active>a:hover,
        .nav-pills>li.active>a:focus {
            color: #4A90E2;
            background-color: #fff;
            border-radius: 0;
        }
        
        .footer-log {
            margin-bottom: 20px;
            ;
            text-align: center;
            color: #fff;
        }
        
        .footer-log a {
            color: #fff;
            padding-left: 10px;
            margin-left: 10px;
            border-left: 1.5px solid #fff;
        }
        
        .footer-log a:visited {
            color: #fff;
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

                            <h3 class="panel-title" style="color: #fff;font-size: 2.4em;padding: 25px 25px 10px;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);"><img src="img/wlogo.png">猿圈注册</h3>
                            <div class="panel panel-outline panel-no-padding" style="border: none;">
                                <div id="signin" class="panel-collapse collapse in">
                                    <div class="panel-body col-md-6">
                                        <ul class="nav nav-pills nav-justified" style="margin: 0 0 15px 20px;">
                                            <li id="regCoder" class="active"><a href="#j2-home" data-toggle="pill">开发者</a>
                                            </li>
                                            <li id="regEnterprise"><a href="#j2-profile" data-toggle="pill">企业</a>
                                            </li>
                                        </ul>
                                        <form runat="server" ID="signUpForm" class="form-horizontal">
                                            <asp:Textbox runat="server" type="hidden" ID="regflag" value="1" />
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
															class="fa fa-envelope"></i></span>
                                                        <asp:Textbox runat="server" type="text" ID="signUpEmail" class="form-control input-lg" placeholder="请输入常用邮箱地址" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
															class="fa fa-key"></i></span>
                                                        <asp:TextBox runat="server" type="password" ID="signUpPassword" class="form-control input-lg" placeholder="请输入密码" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xs-12" style="margin-left: 20px;">
                                                <label>
                                                    <input type="checkbox" id="check" name="check"> <small>我已阅读并同意<a
														href="">《oxcoder用户协议》</a></small>
                                                </label> <span class="help-block" id="hint1" style="margin-left: 20px;"></span> <span class="help-block has-error" style="margin-left: 20px;" id="hint2"> <small
													class="help-block"></small>
												</span>
                                            </div>
                                            <div class="col-xs-12">
                                                <asp:Button ID="SignUpButton" class="btn btn-primary btn-lg" style="margin-left: 20px; border-radius: 3px;" runat="server" Text="注册" OnClick="SignUpButton_Click" />
                                            </div>
                                            <div class="col-xs-12"></div>
                                        </form>
                                    </div>
                                    <!-- /.panel-body -->
                                    <div class="panel-body col-md-6">
                                        <div style="margin: 20px;">
                                            <p class="align-left" style="font-size: 16px; color: #666;">
                                                已有帐号?<a href="signin.aspx">直接登录</a>
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
            2015 oxcoder.com <a href="">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="">意见反馈</a>
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
            $("#regCoder").click(function () {
                $("#regflag").val(1);
            });
            $("#regEnterprise").click(function () {
                $("#regflag").val(2);
            });

            $('#signUpForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    signUpEmail: {
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
                    signPassword: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请输入密码'
                            },
                            stringLength: {
                                min: 6,
                                max: 30,
                                message: '密码应大于6位，小于30位'
                            }
                        }
                    },
                    check: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请同意用户协议'
                            }
                        }
                    }
                }
            });
        });
    </script>
</body>

</html>
