<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderInfo.aspx.cs" Inherits="WebOxcoder.coderInfo" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 用户个人中心</title>

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
    <link href="css/styler/style_new.css" rel="stylesheet" type="text/css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    <style type="text/css">
        .center {
            text-align: center;
        }
        /*#sina {
                background-image:url("img/sina.png");
            }
            #sina:hover img{
                background-image:url("img/sina.png");
            } */
        
        .img-hide {
            text-align: left;
            height: 0;
            background: rgba(0, 0, 0, 0.5);
            display: none;
        }
        
        .img-hide a {
            color: #fff;
        }
        
        .img-hide a:visited {
            color: #fff;
        }
        
        .center:hover .img-hide {
            cursor: pointer;
            height: 48px;
            padding: 10px;
            width: 48px;
            border-radius: 24px;
            position: absolute;
            top: 0;
            display: table-cell;
        }
        
        .center:hover .img-show {
            height: 0;
        }
    </style>
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
            <div class="col-md-9">
                <section id="middle">
                    <div class="panel panel-default resume-block">
                        <div>
                            <!-- <h4>Level 1 菜鸟</h4> -->
                        </div>
                        <div class="panel-body shadow-effect">
                            <div>
                                <!-- <h3><i class="fa fa-money"></i> 我的身价</h3> -->
                                <span style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">编程综合表现</span>
                                <dl class="dl-horizontal">
                                    <!-- 									<dt>数据分析图</dt> -->
                                    <dd>
                                        <canvas id="myChart" width="400" height="400"></canvas>
                                        <span class="help-block small">红色的点是使用猿圈用户的平均值，蓝色的是用户的数值。</span>
                                    </dd>
                                    <!-- <dd class="text-muted">灰色的点是使用猿圈用户的平均值，蓝色的是用户的数值</dd> -->
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>职业素质评价</dt>
                                    <dd>
                                        <span class="pull-center label label-primary">1.04 </span> <span style="margin-left: 10px" class="label label-primary">战胜了
											 
												43.13
											 %的人
										</span> <span class="help-block small">此项为用户综合能力评分。</span>
                                    </dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>编程熟练度</dt>
                                    <!-- <dd>这里显示和代码敲击速度相关的数据，以及该项评价</dd> -->
                                    <dd>
                                        <span class="pull-middle label label-info">4.95 </span><span style="margin-left: 10px" class="label label-info">战胜了  
												43.13
											 %的人
										</span> <span class="help-block small">此项是对于用户编程速度快慢的综合评价。</span>
                                    </dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>编程专注值</dt>
                                    <!-- <dd>这里显示和 项目耗费时长/项目跨越长度/平均学习时长 综合分析后的相关数据，以及该项评价</dd> -->
                                    <dd>
                                        <span class="pull-middle label label-primary">1.28 </span><span style="margin-left: 10px" class="label label-primary">战胜了
											 
												29.41
											 %的人
										</span> <span class="help-block small">此项是对于项目耗费时长/项目跨越长度/平均学习时长综合分析后的相关数据。</span>
                                    </dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>偏差值</dt>
                                    <!-- <dd>这里显示和用户出错相关的数据（可能涉及与其他用户的出错率的比较），以及该项评价</dd> -->
                                    <dd>
                                        <span class="pull-middle label label-warning">4.35 </span> <span style="margin-left: 10px" class="label label-warning">战胜了
											 
												26.47
											 %的人
										</span> <span class="help-block small">此项是对于用户编程过程中的出错频率的统计分析数据。


										</span>

                                    </dd>



                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>宅指数</dt>
                                    <!-- <dd>这里显示和ip地址切换频繁程度相关的数据，以及该项的评价</dd> -->
                                    <dd>
                                        <span class="pull-center label label-success">0.21 </span><span style="margin-left: 10px" class="label label-success">战胜了  
												23.77
											 %的人
										</span> <span class="help-block small">此项是用户“宅”在网站上的频繁程度。</span>
                                    </dd>
                                </dl>


                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-3">
                <section id="Section1">
                    <div class="panel-body shadow-effect">
                        <!-- <h3><i class="fa fa-money"></i> 我的身价</h3> -->
                        <span style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">我的身价</span>
                        <div class="align-center">
                            <h1 id="coderPrice" runat="Server" style="color: #3872a4; font-size: 48px;">
								￥0
							</h1>
                        </div>
                        <span class="label label-warning">Lv.3</span>
                        <p class="help-block">
                            &#23567;&#29275;&#65306;&#20320;&#24050;&#32463;&#31934;&#36890;&#20102;&#19968;&#20123;&#27169;&#22359;&#65292;&#21487;&#20197;&#29420;&#31435;&#23436;&#25104;&#36739;&#22797;&#26434;&#24037;&#20316;&#65292;&#19988;&#28789;&#27963;&#36816;&#29992;&#26041;&#27861;&#35299;&#20915;&#38382;&#39064;&#65292;&#28176;&#28176;&#30340;&#25104;&#20026;&#39033;&#30446;&#30340;&#26680;&#24515;ing
                        </p>
                        <!-- <p>网站排名：8765</p> -->
                    </div>
                    <div class="panel-body shadow-effect" style="margin-top: 20px;">

                        <!-- <h3><i class="fa fa-money"></i> 我的身价</h3> -->
                        <span style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">绑定信息</span>
                        <p></p>
                        <div class="col-md-4 center">


                            <a href="#" id="sina" title="新浪微博" class="img-show"> <img src="img/sina2.png">
                            </a>



                            <div class="img-hide">
                                <a target="_blank" href="https://api.weibo.com/oauth2/authorize?client_id=3064453059&response_type=code&forcelogin=true&redirect_uri=http://www.oxcoder.com/auth-sina.action">绑定</a>

                            </div>

                            <p class="text-muted">微博</p>
                        </div>
                        <div class="col-md-4 center">


                            <a href="#" id="github" title="github" class="img-show"><img src="img/github2.png">
                            </a>



                            <div class="img-hide">
                                <!-- 																	本地						  d1ca074d5dcc05ce594e -->
                                <!-- 									<a -->
                                <!-- 										href="https://github.com/login/oauth/authorize?client_id=d1ca074d5dcc05ce594e&redirect_uri=http://localhost:8080/Training/auth-github.action" -->
                                <!-- 										target="_blank">绑定</a> -->
                                <a href="https://github.com/login/oauth/authorize?client_id=cb26d4b4731db53e8a90&redirect_uri=http://www.oxcoder.com/auth-github.action" target="_blank">绑定</a>
                            </div>

                            <p class="text-muted text-center">Github</p>
                        </div>

                        <!-- 						<div class="col-md-4 center"> -->
                        <!-- 							<img src="img/github2.png"></a> -->
                        <!-- 							<p class="text-muted text-center">暂未开放</p> -->
                        <!-- 						</div> -->
                        <div class="col-md-4 center">
                            <!-- 							<a href="#" id="zhihu" class="img-show" target="_blank"> -->
                            <img src="img/zhihu2.png">
                            <!-- 								</a> -->
                            <!-- 							<div class="img-hide"> -->
                            <!-- 								<a href="">绑定</a> -->
                            <p class="text-muted text-center">暂未开放</p>
                        </div>
                        <div class="col-md-4 center">
                            <!-- <a href="#" id="quora" class="img-show"> -->
                            <img src="img/quora2.png">
                            <!-- </a> -->
                            <!-- <div class="img-hide">
								<a href="#">绑定</a>
							</div> -->
                            <p class="text-muted text-center">暂未开放</p>
                        </div>

                        <div class="col-md-4 center">
                            <!-- <a href="#" id="stackoverflow" class="img-show"> -->
                            <img src="img/stackoverflow2.png">
                            <!-- </a> -->
                            <!-- <div class="img-hide">
								<a href="#">绑定</a>
							</div> -->
                            <p class="text-muted text-center">暂未开放</p>
                        </div>
                        <div class="col-md-4 center">
                            <!-- <a href="#" id="sf" class="img-show"> -->
                            <img src="img/sf2.png">
                            <!-- </a> -->
                            <!-- <div class="img-hide">
								<a href="#">绑定</a>
							</div> -->
                            <p class="text-muted text-center">暂未开放</p>
                        </div>
                        <div class="col-md-4 center">
                            <!-- <a href="#" id="csdn" class="img-show"> -->
                            <img src="img/csdn2.png">
                            <!-- </a> -->
                            <!-- <div class="img-hide">
								<a href="#">绑定</a>
							</div> -->
                            <p class="text-muted text-center">暂未开放</p>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                    <div class="panel-body shadow-effect" style="margin-top: 20px;">

                        <!-- <h3><i class="fa fa-money"></i> 我的身价</h3> -->
                        <span style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">基本资料</span>
                        <h3>有点甜</h3>
                        <p>
                            <span class="resume-label">性别:男</span>
                            <span class="resume-label">年龄:22</span>
                        </p>
                        <p>
                            <span class="resume-label">手机:12345678900</span>
                        </p>
                        <p>
                            <span class="resume-label">邮箱:123456789@qq.com</span>
                        </p>
                        <p class="pull-right">
                            <a href="coderInfoChange.aspx" class="resume-action">编辑</a>
                        </p>
                    </div>
                    <!-- /.panel-body -->


                </section>
            </div>



        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->


    <form>
        <input id="input-speed-all" type="hidden" value="9.57" />
        <input id="input-manito-all" type="hidden" value="2.29" />
        <input id="input-error-all" type="hidden" value="5.27" />
        <input id="input-time-all" type="hidden" value="0.14" />
        <input id="input-speed" type="hidden" value="4.95" />
        <input id="input-manito" type="hidden" value="1.28" />
        <input id="input-error" type="hidden" value="4.35" />
        <input id="input-time" type="hidden" value="0.21" />
    </form>

    <!-- jQuery -->
    <script src="js/libs/jquery-1.11.0.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- Sparkline -->
    <script src="js/libs/jquery.sparkline.min.js"></script>

    <!-- Bootstrap Switch -->
    <script src="js/libs/bootstrap-switch.min.js"></script>

    <!-- Bootstrap Select -->


    <!-- Bootstrap File -->
    <script src="js/libs/bootstrap-filestyle.js"></script>
    <!-- Summernote -->
    <script src="js/libs/summernote.min.js"></script>

    <!-- Chart.js  -->
    <script src="js/Chart.js"></script>

    <script>
        $(document).ready(
            function () {
                //Get the context of the canvas element we want to select
                var ctx = document.getElementById("myChart").getContext(
                    "2d");
                var data = {
                    labels: ["编程熟练度", "编程专注值", "偏差值", "宅指数"],
                    datasets: [
                        {
                            fillColor: "rgba(220,0,0,0.5)",
                            strokeColor: "rgba(220,220,220,1)",
                            pointColor: "rgba(220,10,10,1)",
                            pointStrokeColor: "#fff",
                            data: [$("#input-speed-all").val(),
           $("#input-manito-all").val(),
           $("#input-error-all").val(),
           $("#input-time-all").val()]
                        },
                        {
                            fillColor: "rgba(0,0,220,0.5)",
                            strokeColor: "rgba(151,187,205,1)",
                            pointColor: "rgba(100,100,205,9)",
                            pointStrokeColor: "#fff",
                            data: [$("#input-speed").val(),
           $("#input-manito").val(),
           $("#input-error").val(),
           $("#input-time").val()]
                        }]
                };
                var options = {

                    //Boolean - If we show the scale above the chart data			
                    scaleOverlay: false,

                    //Boolean - If we want to override with a hard coded scale
                    scaleOverride: false,

                    //** Required if scaleOverride is true **
                    //Number - The number of steps in a hard coded scale
                    scaleSteps: null,
                    //Number - The value jump in the hard coded scale
                    scaleStepWidth: null,
                    //Number - The centre starting value
                    scaleStartValue: null,

                    //Boolean - Whether to show lines for each scale point
                    scaleShowLine: true,

                    //String - Colour of the scale line	
                    scaleLineColor: "rgba(0,0,0,.1)",

                    //Number - Pixel width of the scale line	
                    scaleLineWidth: 1,

                    //Boolean - Whether to show labels on the scale	
                    scaleShowLabels: false,

                    //Interpolated JS string - can access value

                    //String - Scale label font declaration for the scale label
                    scaleFontFamily: "'Arial'",

                    //Number - Scale label font size in pixels	
                    scaleFontSize: 12,

                    //String - Scale label font weight style	
                    scaleFontStyle: "normal",

                    //String - Scale label font colour	
                    scaleFontColor: "#666",

                    //Boolean - Show a backdrop to the scale label
                    scaleShowLabelBackdrop: true,

                    //String - The colour of the label backdrop	
                    scaleBackdropColor: "rgba(255,255,255,0.75)",

                    //Number - The backdrop padding above & below the label in pixels
                    scaleBackdropPaddingY: 2,

                    //Number - The backdrop padding to the side of the label in pixels	
                    scaleBackdropPaddingX: 2,

                    //Boolean - Whether we show the angle lines out of the radar
                    angleShowLineOut: true,

                    //String - Colour of the angle line
                    angleLineColor: "rgba(0,0,0,.1)",

                    //Number - Pixel width of the angle line
                    angleLineWidth: 1,

                    //String - Point label font declaration
                    pointLabelFontFamily: "'Arial'",

                    //String - Point label font weight
                    pointLabelFontStyle: "normal",

                    //Number - Point label font size in pixels	
                    pointLabelFontSize: 12,

                    //String - Point label font colour	
                    pointLabelFontColor: "#666",

                    //Boolean - Whether to show a dot for each point
                    pointDot: true,

                    //Number - Radius of each point dot in pixels
                    pointDotRadius: 3,

                    //Number - Pixel width of point dot stroke
                    pointDotStrokeWidth: 1,

                    //Boolean - Whether to show a stroke for datasets
                    datasetStroke: true,

                    //Number - Pixel width of dataset stroke
                    datasetStrokeWidth: 2,

                    //Boolean - Whether to fill the dataset with a colour
                    datasetFill: true,

                    //Boolean - Whether to animate the chart
                    animation: true,

                    //Number - Number of animation steps
                    animationSteps: 60,

                    //String - Animation easing effect
                    animationEasing: "easeOutQuart",

                    //Function - Fires when the animation is complete
                    onAnimationComplete: null

                };
                new Chart(ctx).Radar(data, options);
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
