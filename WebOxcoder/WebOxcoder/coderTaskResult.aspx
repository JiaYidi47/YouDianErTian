<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderTaskResult.aspx.cs" Inherits="WebOxcoder.coderTaskResult" %>

<!DOCTYPE html>


<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 挑战结果</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css?v=3.1.1" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link href="fonts/font-awesome/css/font-awesome.min.css?v=4.0.3" rel="stylesheet">

    <!-- Bootstrap Switch -->
    <link href="css/libs/bootstrap-switch.min.css?v=3.0.0" rel="stylesheet">

    <!-- Bootstrap Select -->
    <link href="css/libs/bootstrap-select.min.css" rel="stylesheet">

    <!-- IcoMoon CSS -->
    <link href="fonts/icomoon/style.css?v=1.0" rel="stylesheet">



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
    <style type="text/css">
        .video-box {
            border: 1px solid #c0c0c0;
        }
        
        .video-box img {
            width: 100%;
        }
        
        .video-desc {
            padding: 0 10px;
        }
        
        .video-source {
            float: right;
        }
        
        .hot-tag {
            position: absolute;
            background: #ff4400;
            color: #fff;
            font-size: 13px;
            line-height: 18px;
            cursor: pointer;
            top: 15px;
            padding: 0 10px;
            right: inherit;
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
                location.replace("session-timeout-log.htm");
            }
        }
    </script>
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <section>

                    <div id="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="container-fluid">
                                    <section>
                                        <div class="page-header">
                                            <h2>
												[&#20013;&#32423;]php&#24037;&#31243;&#24072;
												（
												&#28145;&#22323;&#24066;&#21019;&#24847;&#25237;&#36164;&#38598;&#22242;&#26377;&#38480;&#20844;&#21496;
												）挑战结果
											</h2>
                                            <!-- 											<h1> -->


                                            <!-- 											</h1> -->
                                            <div class="col-md-2">


                                                <img src="img/pass1.png">

                                            </div>
                                            <div class="col-md-10">
                                                <h4 style="color: #3872a4;">
													当前身价￥
													7740
													
												</h4>
                                                <span class="label label-warning">Lv.2</span>
                                                <p class="help-block">
                                                    &#22823;&#34430; &#65306;&#24320;&#22987;&#22312;&#25351;&#23548;&#19979;&#29420;&#31435;&#36127;&#36131;&#21333;&#29420;&#30340;&#27169;&#22359;&#65292;&#24320;&#22987;&#24605;&#32771;&#65292;&#21327;&#21161;&#35299;&#20915;&#37096;&#20998;&#38382;&#39064;&#65292;&#29087;&#32451;&#30340;&#20351;&#29992;&#25628;&#32034;&#24341;&#25806;&#65292;&#21162;&#21147;&#21152;&#27833;&#21606;~
                                                </p>

                                            </div>
                                            <div class="bdsharebuttonbox">
                                                <a href="#" class="bds_more" data-cmd="more"></a>
                                                <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                                                <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                                                <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
                                            </div>
                                            <script>
                                                window._bd_share_config = {
                                                    "common": {
                                                        "bdSnsKey": {},
                                                        "bdText": "我在猿圈上完成了[中级]php工程师挑战，挑战结果是不通过。现在身价是7740元，级别是#大虾#：开始在指导下独立负责单独的模块，开始思考，协助解决部分问题，熟练的使用搜索引擎，努力加油呦~。",
                                                        "bdMini": "2",
                                                        "bdMiniList": false,
                                                        "bdPic": "http://www.oxcoder.com/img/indexpic.png",
                                                        "bdStyle": "1",
                                                        "bdSize": "24"
                                                    },
                                                    "share": {},
                                                    "selectShare": {
                                                        "bdContainerClass": null,
                                                        "bdSelectMiniList": [
                "qzone",
                "tsina",
                "renren"]
                                                    }
                                                };
                                                with (document)
                                                    0[(getElementsByTagName('head')[0] || body)
                                                        .appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
                                            </script>


                                            <!-- 											<p> -->
                                            <!-- 												身价 -->


                                            <!-- 												<a href="user-resume.action">查看详情</a> -->
                                            <!-- 											</p> -->
                                            <hr>

                                            <h2>您可能尚待巩固的知识点有：</h2>

                                            <li class="btn btn-alt btn-primary" style="margin-right: 15px;">&#32654;&#29492;&#29579;&#31639;&#27861;</li>

                                            <li class="btn btn-alt btn-primary" style="margin-right: 15px;">&#25490;&#21015;&#32452;&#21512;&#31639;&#27861;</li>

                                            <li class="btn btn-alt btn-primary" style="margin-right: 15px;">&#38543;&#26426;&#20989;&#25968;</li>

                                            <li class="btn btn-alt btn-primary" style="margin-right: 15px;">&#31639;&#27861;</li>



                                        </div>

                                        <h2>推荐给您的学习资料</h2>

                                        <div class="alert alert-info" style="text-align: center" role="alert">还没有相关资料，敬请期待~</div>




                                        </br>
                                        <a href="coderTask.aspx">
                                            <button class="btn btn-new1 btn-lg">回到挑战列表</button>
                                        </a>

                                    </section>
                                </div>

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
    <script src="bootstrap/js/bootstrap.min.js?v=3.1.1"></script>

    <!-- Sparkline -->
    <script src="js/libs/jquery.sparkline.min.js"></script>

    <!-- Bootstrap Switch -->
    <script src="js/libs/bootstrap-switch.min.js?v=3.0.0"></script>

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
