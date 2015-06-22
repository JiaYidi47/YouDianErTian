<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterpriseInfo.aspx.cs" Inherits="WebOxcoder.enterpriseInfo" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 &#26377;&#28857;&#20799;&#29980;的企业信息
    </title>

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
            <div class="col-md-9 col-no-left-padding">
                <section class="middle">
                    <h2 class="col-md-12">
						<i class="fa  fa-th-large"></i>
						&#26377;&#28857;&#20799;&#29980;
						进行中的挑战
					</h2>



                    <div class="col-md-4">
                        <section id="middle">
                            <div class="panel panel-default shadow-effect">
                                <div class="col-xs-12 panel-header">
                                    <div class="pull-left">
                                        <h4 class="line-control">
													<a href="javascript:;">[&#21021;&#32423;]Java&#24037;&#31243;&#24072;</a>
												</h4>
                                        <h4 class="line-control">
													<a href="javascript:;">&#26377;&#28857;&#20799;&#29980;</a>
												</h4>
                                    </div>
                                    <div class="pull-right client-info">
                                        <span class="percent text-danger"><img
													class="img-circle" style="width: 60px; height: 60px"
													src="logo/908.jpg"></span>
                                    </div>

                                </div>

                                <div class="panel-body ">
                                    <ul class="list-unstyled">
                                        <li>月薪： 2k~5k

                                        </li>
                                        <li>职位诱惑：</li>
                                        <li>
                                            <ul class="companyTags">
                                                <!-- <li>弹性工作</li>
														<li>技能培训</li>
														<li>节日礼物</li> -->

                                                <li>&#33410;&#26085;&#31036;&#29289;</li>

                                                <li>&#24069;&#21733;&#22810;</li>

                                                <li>&#31649;&#29702;&#35268;&#33539;</li>

                                            </ul>
                                        </li>
                                        <li>挑战项目：</li>
                                        <li>
                                            <ul>

                                                <li><a href="#">&#22823;&#23567;&#20889;&#36716;&#25442;</a>
                                                </li>

                                                <li><a href="#">&#26085;&#26399;&#27604;&#36739;</a>
                                                </li>

                                                <li><a href="#">&#36882;&#24402;&#36816;&#31639;&#38454;&#20056;</a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li>难度：



                                            <i class="fa fa-star"></i>


                                            <li><i class="fa fa-calendar"></i> 2015-04-23~2015-04-23
                                            </li>
                                            <li><i class="fa fa-user"></i> 0人已接受挑战
                                            </li>
                                    </ul>
                                </div>
                                <!-- /.panel-body -->

                                <!-- /.panel-footer -->
                            </div>
                        </section>
                    </div>

                    <div class="col-md-4">
                        <section id="Section1">
                            <div class="panel panel-default shadow-effect">
                                <div class="col-xs-12 panel-header">
                                    <div class="pull-left">
                                        <h4 class="line-control">
													<a href="javascript:;">[&#21021;&#32423;]Java&#24037;&#31243;&#24072;</a>
												</h4>
                                        <h4 class="line-control">
													<a href="javascript:;">&#26377;&#28857;&#20799;&#29980;</a>
												</h4>
                                    </div>
                                    <div class="pull-right client-info">
                                        <span class="percent text-danger"><img
													class="img-circle" style="width: 60px; height: 60px"
													src="logo/908.jpg"></span>
                                    </div>

                                </div>

                                <div class="panel-body ">
                                    <ul class="list-unstyled">
                                        <li>月薪： 2k~5k

                                        </li>
                                        <li>职位诱惑：</li>
                                        <li>
                                            <ul class="companyTags">
                                                <!-- <li>弹性工作</li>
														<li>技能培训</li>
														<li>节日礼物</li> -->

                                                <li>&#33410;&#26085;&#31036;&#29289;</li>

                                                <li>&#24069;&#21733;&#22810;</li>

                                                <li>&#31649;&#29702;&#35268;&#33539;</li>

                                            </ul>
                                        </li>
                                        <li>挑战项目：</li>
                                        <li>
                                            <ul>

                                                <li><a href="#">&#22823;&#23567;&#20889;&#36716;&#25442;</a>
                                                </li>

                                                <li><a href="#">&#20844;&#32422;&#25968;&#21644;&#20844;&#20493;&#25968;</a>
                                                </li>

                                                <li><a href="#">&#35745;&#31639;&#23383;&#31526;&#25968;</a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li>难度：



                                            <i class="fa fa-star"></i>


                                            <li><i class="fa fa-calendar"></i> 2015-04-23~2015-04-23
                                            </li>
                                            <li><i class="fa fa-user"></i> 0人已接受挑战
                                            </li>
                                    </ul>
                                </div>
                                <!-- /.panel-body -->

                                <!-- /.panel-footer -->
                            </div>
                        </section>
                    </div>

                    <div class="col-md-4">
                        <section id="Section2">
                            <div class="panel panel-default shadow-effect">
                                <div class="col-xs-12 panel-header">
                                    <div class="pull-left">
                                        <h4 class="line-control">
													<a href="javascript:;">[&#20013;&#32423;]Java&#24037;&#31243;&#24072;</a>
												</h4>
                                        <h4 class="line-control">
													<a href="javascript:;">&#26377;&#28857;&#20799;&#29980;</a>
												</h4>
                                    </div>
                                    <div class="pull-right client-info">
                                        <span class="percent text-danger"><img
													class="img-circle" style="width: 60px; height: 60px"
													src="logo/908.jpg"></span>
                                    </div>

                                </div>

                                <div class="panel-body ">
                                    <ul class="list-unstyled">
                                        <li>月薪： 8k~10k

                                        </li>
                                        <li>职位诱惑：</li>
                                        <li>
                                            <ul class="companyTags">
                                                <!-- <li>弹性工作</li>
														<li>技能培训</li>
														<li>节日礼物</li> -->

                                                <li>&#33410;&#26085;&#31036;&#29289;</li>

                                                <li>&#24069;&#21733;&#22810;</li>

                                                <li>&#31649;&#29702;&#35268;&#33539;</li>

                                            </ul>
                                        </li>
                                        <li>挑战项目：</li>
                                        <li>
                                            <ul>

                                                <li><a href="#">&#27721;&#35834;&#22612;&#38382;&#39064;</a>
                                                </li>

                                                <li><a href="#">&#32452;&#21512;&#27169;&#24335;</a>
                                                </li>

                                                <li><a href="#">&#39072;&#20498;&#26632;</a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li>难度：



                                            <i class="fa fa-star"></i>

                                            <i class="fa fa-star"></i>

                                            <i class="fa fa-star"></i>


                                            <li><i class="fa fa-calendar"></i> 2015-04-23~2015-04-23
                                            </li>
                                            <li><i class="fa fa-user"></i> 0人已接受挑战
                                            </li>
                                    </ul>
                                </div>
                                <!-- /.panel-body -->

                                <!-- /.panel-footer -->
                            </div>
                        </section>
                    </div>


                </section>
            </div>

            <div class="col-md-3">
                <section id="Section3">
                    <div class="panel panel-default resume-block">

                        <div class="panel-body">
                            <h2 class="grey">
								<img src="logo/908.jpg" height="40px"
									width="40px;">
								有点儿甜小组
							</h2>
                            <p>
                                <span class="resume-label">.NET&#26377;&#28857;&#20799;&#29980;&#23567;&#32452;</span>
                            </p>
                            <p>
                                <span class="resume-label">地点:&#21271;&#20140;-&#28023;&#28096;&#21306;</span> <span class="resume-label">规模:
									少于15人     
								</span>
                            </p>
                            <p>
                                <span class="resume-label">公司网址:<a
									href="http://"></a></span>
                            </p>
                            <ul class="companyTags">
                                <!-- <li>弹性工作</li>
													<li>技能培训</li>
													<li>节日礼物</li> -->

                                <li>&#33410;&#26085;&#31036;&#29289;</li>

                                <li>&#24069;&#21733;&#22810;</li>

                                <li>&#31649;&#29702;&#35268;&#33539;</li>

                            </ul>
                            <p class="pull-right">
                                <a href="enterpriseInfoChange1.aspx" class="resume-action">编辑</a>
                            </p>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <div class="panel panel-default resume-block">

                        <div class="panel-body">
                            <h3>
								<i class="fa fa-align-left"></i> 公司简介
							</h3>
                            <p>
                                .NET&#26377;&#28857;&#20799;&#29980;&#23567;&#32452;


                            </p>
                            <p class="pull-right">
                                <a href="enterpriseInfoChange1.aspx" class="resume-action">编辑</a>
                            </p>
                        </div>
                        <!-- /.panel-body -->
                    </div>

                </section>
            </div>

            <div class="col-md-12">
                <section id="Section4">
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
                    © 2015 oxcoder.com <a href="">联系我们</a> <a href="htp://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="">意见反馈</a>
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
