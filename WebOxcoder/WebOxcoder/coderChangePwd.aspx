<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderChangePwd.aspx.cs" Inherits="WebOxcoder.coderChangePwd" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 修改密码</title>

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
    <link href="css/styler/style.css" rel="stylesheet">

    <!-- Max css -->
    <link href="css/styler/style_new.css" rel="stylesheet">

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
                <a class="navbar-brand hidden-sm" href="coderHome.aspx" style="padding: 0;"><img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
                </a>
            </div>
            <div class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li><a href="coderHome.aspx">首页</a>
                    </li>
                    <li><a href="coderTask.aspx">挑战</a>
                    </li>
                    <li><a href="coderInfo.aspx">个人中心</a>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="text">有点儿甜</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="coderChangePwd.aspx">修改密码</a>
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
            var k = 1
            if (k == null) {
                location.replace("session-timeout-log.action");
            }
        }
    </script>



    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
                <div id="content">
                    <div class="row">
                        <form id="defaultForm" class="form-horizontal" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="exampleInputEmail">旧密码</label>
                                <input name="old" type="password" class="form-control" id="exampleInputEmail" placeholder="请输入旧密码">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail">新密码</label>
                                <input name="pwd" type="password" class="form-control" id="Password1" placeholder="请输入新密码">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail">重复新密码</label>
                                <input name="rePwd" type="password" class="form-control" id="Password2" placeholder="请输入重复新密码">
                            </div>
                            <button class="btn btn-new1" onclick="window.location.href='coderhome.aspx'">修改密码</button>
                        </form>
                        <!-- 错误信息 -->
                        <font color=red> </font>
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
                    © 2015 oxcoder.com <a href="">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="">意见反馈</a>
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
<script src="js/libs/bootstrapvalidator.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',

            fields: {
                old: {
                    validators: {
                        notEmpty: {
                            message: '请输入旧密码'
                        }
                    }
                },
                pwd: {
                    validators: {
                        notEmpty: {
                            message: '请输入新密码'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: '密码应大于6位，小于30位'
                        }
                    }
                },
                rePwd: {
                    validators: {
                        notEmpty: {
                            message: '请输入新密码'
                        },
                        identical: {
                            field: 'pwd',
                            message: '两次输入的密码不一致'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: '密码应大于6位，小于30位'
                        }
                    }
                }
            }
        });
    });
</script>
