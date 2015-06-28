<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderTask.aspx.cs" Inherits="WebOxcoder.coderTask" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 挑战主页</title>

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
                    <li class="active"><a href="coderTask.aspx">挑战</a>
                    </li>
                    <!-- <li ><a
						href="user-practice-list.action">练习记录</a></li> -->
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
            <div class="col-md-12">
                <section id="middle">
                    <!-- <ul class="nav nav-pills" style="margin:20px 0;">
                            <li class="active"><a href="#pill-home" data-toggle="pill">我接受的挑战</a></li>
                            <li><a href="#pill-profile" data-toggle="pill">挑战历史</a></li>
                        </ul> -->
                    <h2 class="h2-tab">
						<a href="">我接受的挑战</a>
					</h2>
                    <h2 class="h2-tab">
						<a href="coderTaskHistory.aspx" class="off">挑战历史</a>
					</h2>
                </section>
            </div>
            <div class="col-md-12 col-no-left-padding">
                <section id="Section1" class="col-md-12">
                    <div class="btn-group">

                        <a class="btn btn-default dropdown-toggle btn-demo-space top-search" data-toggle="dropdown" href="#"> 全部 <span class="caret"></span></a>

                        <ul class="dropdown-menu">
                            <li><a href="">全部</a>
                            </li>
                            <li><a href="">未完成的挑战</a>
                            </li>
                            <li><a href="">通过的挑战</a>
                            </li>
                            <li><a href="">不通过的挑战</a>
                            </li>
                        </ul>
                    </div>

                </section>

                    <div id="challengeItem" runat="Server">
                        
                    </div>

            </div>

            <!-- 			<div class="col-md-3"> -->

            <!-- 					<a href="user-corp-list.action?flag=1" class="grey pull-right">查看更多</a> -->

            <!-- 					<ul class="list-unstyled item-listing item-listing-small"> -->

            <!-- 							<li> -->
            <!-- 								<div class="media"> -->
            <!-- 									<div class="pull-left"> -->


            <!-- 											width="100"> -->
            <!-- 										</a> -->
            <!-- 									</div> -->
            <!-- 									<div class="media-body"> -->


            <!-- 									</div> -->
            <!-- 								</div>  -->
            <!-- 							</li> -->

            <!-- 					</ul> -->


            <!-- 					<a href="user-corp-list.action?flag=2" class="grey pull-right">查看更多</a> -->

            <!-- 					<ul class="list-unstyled item-listing item-listing-small"> -->

            <!-- 							<li> -->
            <!-- 								<div class="media"> -->
            <!-- 									<div class="pull-left"> -->


            <!-- 											width="100"> -->
            <!-- 										</a> -->
            <!-- 									</div> -->
            <!-- 									<div class="media-body"> -->


            <!-- 									</div> -->
            <!-- 								</div>  -->
            <!-- 							</li> -->

            <!-- 					</ul> -->



            <!-- 					<a href="user-corp-list.action?flag=0" class="grey pull-right">查看更多</a> -->

            <!-- 					<ul class="list-unstyled item-listing item-listing-small"> -->

            <!-- 							<li> -->
            <!-- 								<div class="media"> -->
            <!-- 									<div class="pull-left"> -->


            <!-- 											width="100"> -->
            <!-- 										</a> -->
            <!-- 									</div> -->
            <!-- 									<div class="media-body"> -->


            <!-- 									</div> -->
            <!-- 								</div>  -->
            <!-- 							</li> -->

            <!-- 					</ul> -->


            <!-- 			</div> -->

            <div class="col-md-12">
                <section id="Section3">
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


    <!-- 这里是拍照的部分 -->


</body>

</html>
