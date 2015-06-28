<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderInfoChange.aspx.cs" Inherits="WebOxcoder.coderInfoChange" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 个人信息</title>

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
    <link href="css/libs/bootstrapvalidator.css" rel="stylesheet">


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
                    <!-- <li ><a
						href="user-practice-list.action">练习记录</a></li> -->
                    <li class="active"><a href="coderInfo.aspx">个人中心</a>
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
            <!--                 <div class="alert alert-info col-md-8 col-md-push-2" role="alert"> -->

            <!--                             </div> -->
            <div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
                <section id="middle">
                    <form id="defaultForm" class="form-vertical" runat="Server">

                        <div class="form-group" id="name" runat="Server">
                            <label>
                                <h3 class="grey">真实姓名</h3>
                            </label>
                            <asp:TextBox type="text" id="gName" value="有点儿甜" class="form-control" placeholder="" runat="Server"/>
                        </div>

                        <div class="form-group" id="age" runat="Server">
                            <label>
                                <h3 class="grey">年龄</h3>
                            </label>
                            <asp:TextBox type="text" id="gAge" value="22" class="form-control" runat="Server"/> <span class="text-danger" id="error1" style="display: none;"></span> <span class="help-block" id="hint1" />
                        </div>

                        <div class="form-group" id="phone" runat="Server">
                            <label>
                                <h3 class="grey">手机</h3>
                            </label>
                            <asp:TextBox type="text" ID="gPhone" value="12345678900" class="form-control" runat="Server"/>
                        </div>
                        <div class="form-group form-actions pull-right">
                            <asp:Button class="btn btn-new1 btn-lg" style="border-radius: 3px;" Text="保存" id="save" runat="Server" OnClick="save_Click"/>
                        </div>

                    </form>
                </section>
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

    <script src="js/libs/jquery.city.select.js"></script>


    <script src="js/libs/bootstrapvalidator.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#defaultForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    name: {
                        validators: {
                            notEmpty: {
                                message: '请输入姓名'
                            }
                        }
                    },
                    sex: {
                        validators: {
                            notEmpty: {
                                message: '请选择性别'
                            }
                        }
                    },
                    age: {
                        validators: {
                            notEmpty: {
                                message: '请输入年龄'
                            },
                            regexp: {
                                regexp: /^[0-9]+$/,
                                message: '请输入数字'
                            },
                            between: {
                                min: 1,
                                max: 100,
                                message: '年龄应在1到100之间'
                            }
                        }
                    },
                    phone: {
                        validators: {
                            notEmpty: {
                                message: '请输入手机'
                            },
                            phone: {
                                message: '请输入正确的联系方式',
                                country: 'CN'
                            }
                        }
                    }
                }
            });
        });
    </script>


    <!-- 引入footer -->


    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="=">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="">意见反馈</a>
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
