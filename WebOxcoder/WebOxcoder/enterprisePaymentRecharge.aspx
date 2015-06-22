<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterprisePaymentRecharge.aspx.cs" Inherits="WebOxcoder.enterprisePaymentRecharge" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 企业账户充值</title>

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
                location.replace("session-timeout-log.action");
            }
        }
    </script>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <section>
                    <div id="content">
                        <div class="row">

                            <div class="col-md-9">

                                <div class="container-fluid">
                                    <section>
                                        <section id="middle">
                                            <h2 class="h2-tab">购买套餐 多买多划算！</h2>
                                            <!-- <a href="oxcoder_corp_new_challenge.aspx"><button class="btn btn-new1 pull-right" style="margin-top:20px;">去充值</button></a> -->
                                            <p class="text-muted">注意：挑战一旦发起后，有效期为1个月，过期后将自动关闭</p>
                                        </section>
                                        <!-- /.page-header -->
                                        <div id="Div1">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <form id="defaultForm" class="form-horizontal bv-form" novalidate="novalidate">
                                                        <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                                                        <div class="col-md-9">
                                                            <!-- 															<div class="radio"> -->
                                                            <!-- 																<input type="radio" id="example-radio1" name="type" -->

                                                            <!-- 															</div> -->
                                                            <!-- 															<div class="radio"> -->
                                                            <!-- 																<input type="radio" id="example-radio1" name="type" -->


                                                            <!-- 															</div> -->
                                                            <!-- 															<div class="radio"> -->
                                                            <!-- 																<input type="radio" id="example-radio1" name="type" -->


                                                            <!-- 															</div> -->
                                                            <h4>套餐类型</h4>
                                                            <div class="radio">
                                                                <input type="radio" id="example-radio1" name="type" value="4" data-bv-field="type">80个邀请+4个挑战 <span class="pull-right">1900元</span>
                                                            </div>
                                                            <div class="radio">
                                                                <input type="radio" id="Radio1" name="type" value="5" data-bv-field="type">400个邀请+20个挑战 <span class="pull-right">7900元</span>
                                                            </div>
                                                            <span class="help-block has-error" id="hint1"></span>
                                                            <hr>
                                                            <h4>发票信息</h4>
                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票抬头</label>
                                                                <div class="col-md-9">
                                                                    <input type="text" id="example-nf-email" name="corpname" class="form-control" placeholder="单位发票抬头">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票内容</label>
                                                                <div class="col-md-9">
                                                                    <label class="checkbox">
                                                                        <input type="checkbox" checked="checked" name="receiptcontent" value="1"> 技术服务
                                                                    </label>
                                                                </div>
                                                                <span class="help-block"></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票类型</label>
                                                                <div class="col-md-9">
                                                                    <label class="checkbox">
                                                                        <input type="checkbox" checked="checked" name="receipttype" value="1"> 普通发票（纸质）
                                                                    </label>
                                                                </div>
                                                                <span class="help-block"></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票邮寄地址</label>
                                                                <div class="col-md-9">
                                                                    <input type="text" name="receiptaddress" class="form-control" placeholder="发票邮寄地址">
                                                                    <span class="help-block"></span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">收票人联系方式</label>
                                                                <div class="col-md-9">
                                                                    <input type="text" name="phone" class="form-control" placeholder="收票人联系方式">
                                                                    <span class="help-block"></span>
                                                                </div>
                                                            </div>

                                                            <button class="btn btn-new1" style="float:right;">下一步</button>
                                                        </div>
                                                    </form>

                                                </div>
                                            </div>
                                            <!-- /.row -->
                                        </div>
                                        <!-- /#content -->
                                    </section>
                                </div>
                            </div>


                            <!-- 引入right -->


                            <div class="col-md-3 profile-info">
                                <div class="panel-user">
                                    <div class="panel-heading">
                                        <div class="panel-title">
                                            <div class="media">
                                                <a class="pull-left"> <img src="logo/908.jpg" class="media-object">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
							<!-- <span class="welcome">Hello</span> -->
							<span>有点儿甜小组</span>
						</h4>
                                                    <span class="text-muted"><small>上次登录日期: <br> 2015-05-06 16:09:18
						</small> </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-outline panel-no-padding hidden-xs">
                                    <div class="panel-body">
                                        <div class="stat-block stat-danger">
                                            <div class="icon">
                                                <b class="icon-cover"></b> <i class="fa fa-bell"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number">
                                                    0
                                                </div>
                                                <div class="description">今日接受挑战人数</div>
                                            </div>
                                        </div>
                                        <div class="stat-block stat-success">
                                            <div class="icon">
                                                <b class="icon-cover"></b> <i class="fa fa-bar-chart-o"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number">
                                                    0
                                                </div>
                                                <div class="description">今日完成挑战人数</div>
                                            </div>
                                        </div>
                                        <div class="stat-block stat-primary">
                                            <div class="icon">
                                                <b class="icon-cover"></b> <i class="fa fa-tachometer"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number">
                                                    0
                                                </div>
                                                <div class="description">共帮您识别的人才</div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /#content -->

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

    <script src="js/libs/bootstrapvalidator.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#defaultForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    type: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请选择套餐'
                            }
                        }
                    },
                    corpname: {
                        validators: {
                            notEmpty: {
                                message: '请输入发票抬头'
                            }
                        }
                    },
                    receiptcontent: {
                        validators: {
                            notEmpty: {
                                message: '请选择发票内容'
                            }
                        }
                    },
                    receipttype: {
                        validators: {
                            notEmpty: {
                                message: '请选择发票类型'
                            }
                        }
                    },
                    receiptaddress: {
                        validators: {
                            notEmpty: {
                                message: '请输入发票邮寄地址'
                            }
                        }
                    },
                    phone: {
                        validators: {
                            notEmpty: {
                                message: '请输入收票人联系方式'
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
