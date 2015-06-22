﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterpriseInvite.aspx.cs" Inherits="WebOxcoder.enterpriseInvite" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 邀请挑战</title>

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
                                <h2 class="h2-tab">
									[&#20013;&#32423;]Java&#24037;&#31243;&#24072;
									-邀请挑战
								</h2>

                                <p class="text-muted">您可以邀请其他渠道获取的人才到oxcoder，通过挑战来识别他们的能力。</p>

                                <form id="defaultForm" class="form-vertical bv-form" novalidate="novalidate" enctype="multipart/form-data">
                                    <input type="hidden" name="reid" value="883">
                                    <button type="submit" class="bv-hidden-submit" disabled="disabled" style="display: none; width: 0px; height: 0px;"></button>
                                    <div class="form-group" id="one">


                                        <input type="hidden" id="inviteNumVal" name="inviteNumVal" value="0">
                                        <label><span class="grey">输入邮箱地址(剩余邀请数：0)
										</span>
                                        </label>
                                        <input type="email" name="oneEmail" id="oneEmail" class="form-control" placeholder="多个邮件地址请用','分隔" onBlur="checkInviteNum()"> <span class="text-muted">邮件将会单独发送给多个候选人。候选人很多？<a
											href="#" onclick="change1()">批量上传</a></span> <span class="help-block" id="hint1" />
                                        <!-- 										<div class="alert alert-danger" id="invitehint" -->
                                        <!-- 											style="text-align: center; display: none" role="alert"> -->
                                        <!-- 											您的邀请次数已不足 <a href="hr-payment-list.action">去充值</a> -->
                                        <!-- 										</div> -->
                                        <span class="help-block has-error" id="invitehint" style="display: none"> <small class="help-block">您的邀请次数已不足
												<a href="enterprisePaymentRecharge.aspx">去充值</a>
										</small>
										</span>
                                    </div>


                                    <div class="form-group" id="two" style="display: none;">
                                        <label><span class="grey">批量上传邮箱地址</span>
                                        </label><a href="" class="pull-right">下载导入模板</a>
                                        <input type="file" name="emailFile" tabindex="-1" style="position: fixed; left: -500px;" id="corp-pic" onchange="fileChange(this);"> <span class="text-muted">不想导入？<a href="#"
											onclick="change2()">输入邮箱地址</a></span> <span class="help-block" id="hint2" />
                                    </div>
                                    <div class="form-group">
                                        <label><span class="grey">邮件主题</span>
                                        </label>
                                        <input readonly type="text" name="subject" class="form-control" value=".NET&#26377;&#28857;&#20799;&#29980;&#23567;&#32452;-在线笔试邀请函"> <span class="text-danger" id="error1" style="display: none;">请输入公司简称</span>
                                        <span class="help-block" id="hint3" />
                                    </div>
                                    <div class="form-group">
                                        <label><span class="grey">邮件内容</span>
                                        </label>
                                        <textarea readonly name="content" rows="9" class="form-control">您好：
                                            <br>我们非常高兴地通知您，您已通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[[职位]]的在线编程挑战，希望您能完成！
                                            <br>点击下面的链接进入在线编程挑战:
                                            <br>[链接]
                                            <br>[密码]感谢您的配合！
                                            <br>
                                            <br>[公司]
                                            <br>[时间]</textarea>

                                        <span class="text-muted">请勿删除邮件内容中的[公司][职位][链接][密码]及[时间]，否则邮件无法正常发送。</span>
                                        <span class="help-block" id="hint4" />
                                    </div>

                                    <div class="form-group pull-right">
                                        <div class="form-group form-actions pull-right">
                                            <button class="btn btn-new1">邀请</button>



                                            <!-- 												<a href="hr-recruit-list.action"><button class="btn" -->
                                            <!-- 														style="margin-left: 10px;">返回</button></a> -->

                                            <a href="enterpriseTask.aspx" class="btn btn-default">返回</a>


                                        </div>
                                    </div>
                                </form>
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
                                                    <span class="text-muted"><small>上次登录日期: <br> 2015-05-05 19:11:37
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
                            <!-- 							<div class="col-md-3 profile-info"> -->
                            <!-- 								<div class="panel-user"> -->
                            <!-- 									<div class="panel-heading"> -->
                            <!-- 										<div class="panel-title"> -->
                            <!-- 											<div class="media"> -->
                            <!-- 												<a class="pull-left"> <img -->

                            <!-- 													class="media-object"> -->
                            <!-- 												</a> -->

                            <!-- 												<div class="media-body"> -->
                            <!-- 													<h4 class="media-heading"> -->
                            <!-- 														<span class="welcome">Hello</span> -->

                            <!-- 													</h4> -->



                            <!-- 												</div> -->
                            <!-- 											</div> -->
                            <!-- 										</div> -->
                            <!-- 									</div> -->
                            <!-- 								</div> -->

                            <!-- 								<div class="panel panel-outline panel-no-padding hidden-xs"> -->
                            <!-- 									<div class="panel-body"> -->
                            <!-- 										<div class="stat-block stat-danger"> -->
                            <!-- 											<div class="icon"> -->
                            <!-- 												<b class="icon-cover"></b> <i class="fa fa-bell"></i> -->
                            <!-- 											</div> -->
                            <!-- 											<div class="details"> -->
                            <!-- 												<div class="number"> -->

                            <!-- 												</div> -->
                            <!-- 												<div class="description">今日接受挑战人数</div> -->
                            <!-- 											</div> -->
                            <!-- 										</div> -->
                            <!-- 										<div class="stat-block stat-success"> -->
                            <!-- 											<div class="icon"> -->
                            <!-- 												<b class="icon-cover"></b> <i class="fa fa-bar-chart-o"></i> -->
                            <!-- 											</div> -->
                            <!-- 											<div class="details"> -->
                            <!-- 												<div class="number"> -->

                            <!-- 												</div> -->
                            <!-- 												<div class="description">今日通过挑战人数</div> -->
                            <!-- 											</div> -->
                            <!-- 										</div> -->
                            <!-- 										<div class="stat-block stat-primary"> -->
                            <!-- 											<div class="icon"> -->
                            <!-- 												<b class="icon-cover"></b> <i class="fa fa-tachometer"></i> -->
                            <!-- 											</div> -->
                            <!-- 											<div class="details"> -->
                            <!-- 												<div class="number"> -->

                            <!-- 												</div> -->
                            <!-- 												<div class="description">共帮您识别的人才</div> -->
                            <!-- 											</div> -->
                            <!-- 										</div> -->
                            <!-- 									</div> -->
                            <!-- 									/.panel-body -->
                            <!-- 								</div> -->
                            <!-- 								/.panel -->
                            <!-- 							</div> -->


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
                    oneEmail: {
                        container: '#hint1',
                        validators: {
                            emailAddress: {
                                multiple: true,
                                separator: /[,]/,
                                message: '请输入正确的邮箱格式，多个邮件地址请用\'\,\'分隔'
                            },
                            notEmpty: {
                                message: '请输入候选人邮箱地址'
                            }
                        }
                    },
                    emailFile: {
                        container: '#hint2',
                        validators: {
                            notEmpty: {
                                message: '请上传邮箱地址文件'
                            }
                        }
                    },
                    subject: {
                        container: '#hint3',
                        validators: {
                            notEmpty: {
                                message: '请输入邮件主题'
                            }
                        }
                    },
                    content: {
                        container: '#hint4',
                        validators: {
                            notEmpty: {
                                message: '请输入邮件内容'
                            }
                        }
                    },
                }
            });
        });

        var inviteFlag = false;
        /**检查邮件邀请人数是否超量**/
        function checkInviteNum() {
            var emailstr = $("#oneEmail").val();
            var emails = new Array();
            emails = emailstr.split(",");
            if (emails.length > $("#inviteNumVal").val()) {
                $("#invitehint").show();
                inviteFlag = false;

            } else {
                $("#invitehint").hide();
                inviteFlag = true;
            }
        }

        function checkInput() {
            if ($("#invitehint").is(':hidden'))
                return true;
            else
                return inviteFlag;
        }
    </script>
    <script type="text/javascript">
        function change1() {
            $('#one').hide();
            $('#two').show();
        };

        function change2() {
            $('#two').hide();
            $('#one').show();
        };
    </script>
    <script type="text/javascript">
        var isIE = /msie/i.test(navigator.userAgent) && !window.opera;

        function fileChange(target, id) {
            var fileSize = 0;
            var filetypes = [".xls", ".xlsx"];
            var filepath = target.value;
            var filemaxsize = 1024 * 2; //2M
            if (filepath) {
                var isnext = false;
                var fileend = filepath.substring(filepath.indexOf("."));
                if (filetypes && filetypes.length > 0) {
                    for (var i = 0; i < filetypes.length; i++) {
                        if (filetypes[i] == fileend) {
                            isnext = true;
                            break;
                        }
                    }
                }
                if (!isnext) {
                    alert("只能上传.xls及.xlsx文件！");
                    target.value = "";
                    return false;
                }
            } else {
                return false;
            }
            if (isIE && !target.files) {
                var filePath = target.value;
                var fileSystem = new ActiveXObject("Scripting.FileSystemObject");
                if (!fileSystem.FileExists(filePath)) {
                    alert("附件不存在，请重新输入！");
                    return false;
                }
                var file = fileSystem.GetFile(filePath);
                fileSize = file.Size;
            } else {
                fileSize = target.files[0].size;
            }

            var size = fileSize / 1024;
            if (size > filemaxsize) {
                alert("附件大小不能大于" + filemaxsize / 1024 + "M！");
                target.value = "";
                return false;
            }
            if (size <= 0) {
                alert("附件大小不能为0M！");
                target.value = "";
                return false;
            }
        }
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
