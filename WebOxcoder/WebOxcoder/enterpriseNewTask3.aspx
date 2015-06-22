<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterpriseNewTask3.aspx.cs" Inherits="WebOxcoder.enterpriseNewTask3" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 新增挑战</title>

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
                            <div class="col-md-9 profile-stream">

                                <div class="page-header row">
                                    <div class="col-md-8">
                                        <h3>新增挑战邀请</h3>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                            <div class="col-md-5"></div>
                                            <div class="col-md-7"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="page-body">
                                    <div class="row">
                                        <div style="text-align: center; margin-bottom: 20px;">
                                            <img src="img/new_c2.png">
                                        </div>
                                        <h4>已选择挑战项目</h4>
                                        <div class="row col-md-12 col-no-left-padding">


                                            <div class="row">

                                                <div class="col-md-4">
                                                    <div class="panel panel-default project">
                                                        <div class="panel-body" style="padding-bottom: 0;">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="pull-left">
                                                                        <h4>
																					&#22269;&#23478;&#21015;&#34920;
																				</h4>
                                                                        <h5 class="text-muted">
																					
																					
			 																					Android项目
																							
																					
																					
																					
																				</h5>
                                                                    </div>
                                                                    <div class="pull-right client-info">
                                                                        <a style="color: white" href="" class="btn btn-primary btn-sm">删除</a>
                                                                    </div>
                                                                </div>
                                                                <!-- /.col-xs-12 -->
                                                                <div class="col-md-12" style="min-height: 68px;">
                                                                    <ul class="companyTags">

                                                                        <li>Android</li>

                                                                        <li>Listview</li>

                                                                        <li>Adpter</li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <!-- /.row -->
                                                        </div>
                                                        <!-- /.panel-body -->
                                                        <div class="panel-footer">
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <span class="small muted">项目难度</span>
                                                                </div>
                                                                <!-- /.col-sm-4 -->
                                                                <div class="col-sm-8">
                                                                    <p>




                                                                        <i class="fa fa-star"></i>


                                                                    </p>
                                                                </div>
                                                                <!-- /.col-sm-8 -->
                                                            </div>
                                                            <!-- /.row -->

                                                        </div>
                                                        <!-- /.panel-footer -->
                                                    </div>
                                                    <!-- /.panel -->

                                                </div>

                                                <div class="col-md-4">
                                                    <div class="panel panel-default project">
                                                        <div class="panel-body" style="padding-bottom: 0;">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="pull-left">
                                                                        <h4>&#36866;&#37197;&#22120;</h4>
                                                                        <h5 class="text-muted">Android项目</h5>
                                                                    </div>
                                                                    <div class="pull-right client-info">
                                                                        <a style="color: white" href="" class="btn btn-primary btn-sm">删除</a>
                                                                    </div>
                                                                </div>
                                                                <!-- /.col-xs-12 -->
                                                                <div class="col-md-12" style="min-height: 68px;">
                                                                    <ul class="companyTags">

                                                                        <li>Android</li>

                                                                        <li>&#36866;&#37197;&#22120;</li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <!-- /.row -->
                                                        </div>
                                                        <!-- /.panel-body -->
                                                        <div class="panel-footer">
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <span class="small muted">项目难度</span>
                                                                </div>
                                                                <!-- /.col-sm-4 -->
                                                                <div class="col-sm-8">
                                                                    <p>
                                                                        <i class="fa fa-star"></i>
                                                                    </p>
                                                                </div>
                                                                <!-- /.col-sm-8 -->
                                                            </div>
                                                            <!-- /.row -->

                                                        </div>
                                                        <!-- /.panel-footer -->
                                                    </div>
                                                    <!-- /.panel -->

                                                </div>

                                                <div class="col-md-4">
                                                    <div class="panel panel-default project">
                                                        <div class="panel-body" style="padding-bottom: 0;">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="pull-left">
                                                                        <h4>
																					&#30701;&#20449;&#25318;&#25130;&#22120;
																				</h4>
                                                                        <h5 class="text-muted">
																					
																					
			 																					Android项目
																							
																					
																					
																					
																				</h5>
                                                                    </div>
                                                                    <div class="pull-right client-info">
                                                                        <a style="color: white" href="" class="btn btn-primary btn-sm">删除</a>
                                                                    </div>
                                                                </div>
                                                                <!-- /.col-xs-12 -->
                                                                <div class="col-md-12" style="min-height: 68px;">
                                                                    <ul class="companyTags">

                                                                        <li>Android</li>

                                                                        <li>&#24191;&#25773;</li>

                                                                        <li>BroadcastReceiver</li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <!-- /.row -->
                                                        </div>
                                                        <!-- /.panel-body -->
                                                        <div class="panel-footer">
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <span class="small muted">项目难度</span>
                                                                </div>
                                                                <!-- /.col-sm-4 -->
                                                                <div class="col-sm-8">
                                                                    <p>




                                                                        <i class="fa fa-star"></i>

                                                                        <i class="fa fa-star"></i>


                                                                    </p>
                                                                </div>
                                                                <!-- /.col-sm-8 -->
                                                            </div>
                                                            <!-- /.row -->

                                                        </div>
                                                        <!-- /.panel-footer -->
                                                    </div>
                                                    <!-- /.panel -->

                                                </div>

                                            </div>
                                            <!-- 错误信息 -->
                                            <font color=red> </font>
                                            <!-- 成功信息 -->

                                            <font color=green> </font>
                                            <!--
                                            <form class="form-horizontal">
                                                <input name="isChain" type="hidden" value="1" />
                                                <input name="reid" type="hidden" value="1013" />
                                                <input type="hidden" name='exercise' value="5,88,27" />
                                                <input type="hidden" name='flag' value="sub" />
                                                <input type="hidden" name="order" value="3" />
                                                <div class="form-group">
                                                    <div class="col-md-12" style="margin-bottom: 20px;">
                                                        <button class="btn btn-new1 pull-right" onclick="window.location.href='enterpriseTask.aspx'">保存&发布挑战</button>
                                                    </div>
                                                </div>
                                            </form>
-->
                                            <div class="col-md-12" style="margin-bottom: 20px;">
                                                <button class="btn btn-new1 pull-right" onclick="window.location.href='enterpriseTask.aspx'">保存&发布挑战</button>
                                            </div>

                                        </div>
                                        <div class="row col-md-12">
                                            <h4 class="pull-left">挑战项目</h4>
                                            <div class="pull-right">
                                                <div style="display: inline-block; vertical-align: top;">
                                                    <form class="input-group" style="width: 200px">
                                                        <input type="hidden" name="flag" value="difficulty" />
                                                        <input type="hidden" name="pid" value="27" />
                                                        <input type="hidden" name="exercise" value="5,88,27" />
                                                        <input type="hidden" name="difficulty" value="" />
                                                        <input name="keyword" class="form-control" placeholder="请输入关键字" value=""><span class="input-group-btn">
															<button class="btn">
																<i class="fa fa-search"></i>
															</button>
														</span>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row col-md-12">
                                            <p class="text-muted">选择智能生成后，我们会根据您的职位关键字与薪资智能匹配最合适的试题</p>
                                        </div>
                                        <div class="row col-md-12 col-no-left-padding">
                                            <div class="panel-body">
                                                <div class="row">





                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#20061;&#23467;&#26684;&#24067;&#23616;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>Gridview</li>

                                                                            <li>Adpter</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#31169;&#20154;&#30005;&#35805;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>Intention </li>

                                                                            <li>&#25171;&#30005;&#35805;</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>

                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#25773;&#25918;&#36827;&#24230;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>&#32447;&#31243;</li>

                                                                            <li>Thread</li>

                                                                            <li>&#25511;&#20214;</li>

                                                                            <li>ProgressBar</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>

                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#22825;&#27668;&#36890;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>Json&#35299;&#26512;</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>

                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#38899;&#25928;&#25773;&#25918;&#22120;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>SoundPool</li>

                                                                            <li>&#25773;&#25918;&#38899;&#25928;</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>

                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#25105;&#30340;&#38393;&#38047;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>&#38393;&#38047;&#31649;&#29702;</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#25968;&#32452;&#36866;&#37197;&#22120;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>&#36866;&#37197;&#22120;</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#23545;&#35805;&#26694;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>Dialog</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#39564;&#35777;&#30721;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>Check</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>

                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#24320;&#26426;&#33258;&#21160;&#21551;&#21160;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>&#24320;&#26426;&#33258;&#21160;&#21551;&#21160;</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#25968;&#25454;&#20849;&#20139;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>SharePrefences</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#30005;&#23376;&#34920;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>Handlooper</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#31616;&#21333;&#36866;&#37197;&#22120;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>SimapleAdapter</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>




                                                    <div class="col-md-4">
                                                        <div class="panel panel-default project">
                                                            <div class="panel-body" style="padding-bottom: 0;">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="pull-left">
                                                                            <h4>
																							&#35838;&#31243;&#34920;
																						</h4>
                                                                            <h5 class="text-muted">
																							
																							
			 																					Android项目
																							
																						</h5>
                                                                        </div>
                                                                        <div class="pull-right client-info">
                                                                            <a style="color: white" href="" class="btn btn-primary btn-sm">添加</a>
                                                                        </div>
                                                                    </div>
                                                                    <!-- /.col-xs-12 -->
                                                                    <div class="col-md-12" style="min-height: 68px;">
                                                                        <ul class="companyTags">

                                                                            <li>Android</li>

                                                                            <li>TableLayout</li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->
                                                            </div>
                                                            <!-- /.panel-body -->
                                                            <div class="panel-footer">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <span class="small muted">项目难度</span>
                                                                    </div>
                                                                    <!-- /.col-sm-4 -->
                                                                    <div class="col-sm-8">
                                                                        <p>




                                                                            <i class="fa fa-star"></i>

                                                                            <i class="fa fa-star"></i>


                                                                        </p>
                                                                    </div>
                                                                    <!-- /.col-sm-8 -->
                                                                </div>
                                                                <!-- /.row -->

                                                            </div>
                                                            <!-- /.panel-footer -->
                                                        </div>
                                                        <!-- /.panel -->

                                                    </div>



                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!--/.row   -->
                                </div>

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
                            <!-- 引入right -->


                            <div class="col-md-3 profile-info">
                                <div class="panel-user">
                                    <div class="panel-heading">
                                        <div class="panel-title">
                                            <div class="media">
                                                <a class="pull-left"> <img src="logo/1000.jpg" class="media-object">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
							<!-- <span class="welcome">Hello</span> -->
							<span>有点儿甜小组</span>
						</h4>
                                                    <span class="text-muted"><small>上次登录日期: <br> 2015-05-06 16:09:48
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
                            <!-- 								<div class="panel panel-outline panel-no-padding hidden-xs"> -->
                            <!-- 									<div class="panel-body"> -->
                            <!-- 										<div class="stat-block stat-danger"> -->
                            <!-- 											<div class="icon"> -->
                            <!-- 												<b class="icon-cover"></b> <i class="fa fa-bell"></i> -->
                            <!-- 											</div> -->
                            <!-- 											<div class="details"> -->
                            <!-- 												<div class="number"> -->

                            <!-- 												</div> -->
                            <!-- 												<div class="description">今日收到的新挑战报告</div> -->
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
                            <!-- 												<div class="description">共帮您找到的人才</div> -->
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
