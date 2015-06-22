<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterpriseTask.aspx.cs" Inherits="WebOxcoder.enterpriseTask" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 挑战管理</title>

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
                    <li class="active"><a href="enterpriseTask.aspx">挑战管理</a>
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
                                            <h2 class="h2-tab">
												<a href="enterpriseTask.aspx">进行中的挑战</a>
											</h2>
                                            <h2 class="h2-tab">
												<a href="enterpriseTaskHistory.aspx" class="off">挑战历史</a>
											</h2>
                                            <a href="enterpriseNewTask1.aspx">
                                                <button class="btn btn-new1 pull-right" style="margin-top: 20px;">新增挑战邀请</button>
                                            </a>
                                        </section>
                                        <!-- /.page-header -->
                                        <div id="Div1">
                                            <div class="row">



                                                <div class="col-md-12">
                                                    <div class="panel panel-default project ">
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <!-- new start-->
                                                                <div class="col-md-5">
                                                                    <h2 style="margin: 12px 0 2px 0;">
																				<a href="enterpriseTaskSift.aspx">[&#20013;&#32423;]Java&#24037;&#31243;&#24072;</a>
																			</h2>
                                                                    <div style="width: 280px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
                                                                        <small>[2015/04/23]
																						&#27721;&#35834;&#22612;&#38382;&#39064;
																					
																						&#32452;&#21512;&#27169;&#24335;
																					
																						&#39072;&#20498;&#26632;
																					</small>
                                                                    </div>

                                                                </div>
                                                                <div class="col-md-2">
                                                                    <ul class="list-unstyled" style="margin: 7px 0;">
                                                                        <li><span class="badge badge-info">0</span>个新接受</li>
                                                                        <li><span class="badge badge-danger">0</span>个新完成</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <ul class="list-unstyled" style="margin: 20px 0;">
                                                                        <li><span class="red">0.0</span>%已合格</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="enterpriseTaskSift.aspx">
                                                                        <button type="button" class="btn btn-new1">去筛选</button>
                                                                    </a>
                                                                    <a href="enterpriseInvite.aspx">
                                                                        <button type="button" class="btn btn-new1" style="margin: 16px 5px;">邀请</button>
                                                                    </a>
                                                                </div>
                                                                <!-- new end-->
                                                            </div>
                                                            <!-- /.row -->


                                                        </div>
                                                        <!-- /.panel-footer -->
                                                    </div>
                                                    <!-- /.panel -->

                                                </div>

                                                <div class="col-md-12">
                                                    <div class="panel panel-default project ">
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <!-- new start-->
                                                                <div class="col-md-5">
                                                                    <h2 style="margin: 12px 0 2px 0;">
																				<a href="enterpriseTaskSift.aspx">[&#21021;&#32423;]Java&#24037;&#31243;&#24072;</a>
																			</h2>
                                                                    <div style="width: 280px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
                                                                        <small>[2015/04/23]
																						&#22823;&#23567;&#20889;&#36716;&#25442;
																					
																						&#20844;&#32422;&#25968;&#21644;&#20844;&#20493;&#25968;
																					
																						&#35745;&#31639;&#23383;&#31526;&#25968;
																					</small>
                                                                    </div>

                                                                </div>
                                                                <div class="col-md-2">
                                                                    <ul class="list-unstyled" style="margin: 7px 0;">
                                                                        <li><span class="badge badge-info">0</span>个新接受</li>
                                                                        <li><span class="badge badge-danger">0</span>个新完成</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <ul class="list-unstyled" style="margin: 20px 0;">
                                                                        <li><span class="red">0.0</span>%已合格</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="enterpriseTaskSift.aspx">
                                                                        <button type="button" class="btn btn-new1">去筛选</button>
                                                                    </a>
                                                                    <a href="enterpriseInvite.aspx">
                                                                        <button type="button" class="btn btn-new1" style="margin: 16px 5px;">邀请</button>
                                                                    </a>
                                                                </div>
                                                                <!-- new end-->
                                                            </div>
                                                            <!-- /.row -->


                                                        </div>
                                                        <!-- /.panel-footer -->
                                                    </div>
                                                    <!-- /.panel -->

                                                </div>

                                                <div class="col-md-12">
                                                    <div class="panel panel-default project ">
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <!-- new start-->
                                                                <div class="col-md-5">
                                                                    <h2 style="margin: 12px 0 2px 0;">
																				<a href="enterpriseTaskSift.aspxs">[&#21021;&#32423;]Java&#24037;&#31243;&#24072;</a>
																			</h2>
                                                                    <div style="width: 280px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
                                                                        <small>[2015/04/23]
																						&#22823;&#23567;&#20889;&#36716;&#25442;
																					
																						&#26085;&#26399;&#27604;&#36739;
																					
																						&#36882;&#24402;&#36816;&#31639;&#38454;&#20056;
																					</small>
                                                                    </div>

                                                                </div>
                                                                <div class="col-md-2">
                                                                    <ul class="list-unstyled" style="margin: 7px 0;">
                                                                        <li><span class="badge badge-info">0</span>个新接受</li>
                                                                        <li><span class="badge badge-danger">0</span>个新完成</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <ul class="list-unstyled" style="margin: 20px 0;">
                                                                        <li><span class="red">0.0</span>%已合格</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="enterpriseTaskSift.aspx">
                                                                        <button type="button" class="btn btn-new1">去筛选</button>
                                                                    </a>
                                                                    <a href="enterpriseInvite.aspx">
                                                                        <button type="button" class="btn btn-new1" style="margin: 16px 5px;">邀请</button>
                                                                    </a>
                                                                </div>
                                                                <!-- new end-->
                                                            </div>
                                                            <!-- /.row -->


                                                        </div>
                                                        <!-- /.panel-footer -->
                                                    </div>
                                                    <!-- /.panel -->

                                                </div>


                                            </div>
                                            <!-- /.row -->
                                        </div>
                                        <!-- /#content -->

                                    </section>

                                </div>
                                <!-- /.container-fluid  -->
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

                        <div class="col-md-12">
                            <section id="Section1">
                                <ul class="pagination">

                                    <li class="disabled"><a href="javascript:;">&laquo;</a>
                                    </li>


                                    <li class='active'><a>1</a>
                                    </li>


                                    <li class="disabled"><a href="javascript:;">&raquo;</a>
                                    </li>


                                </ul>
                            </section>
                        </div>

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
