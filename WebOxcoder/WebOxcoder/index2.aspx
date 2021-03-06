﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="WebOxcoder.index2" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta property="wb:webmaster" content="caaa026a0027d2fc" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta content="猿圈网是专业的技术测评平台,帮助企业高效省时地识别最优秀的技术人才。" name="description">
    <meta content="技术测评,IT测评,人才测评,互联网招聘,笔试,在线笔试,编程笔试,企业笔试,技术评测,北森,SAAS" name="keywords">


    <title>猿圈</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Bootstrap Switch -->
    <link href="css/libs/bootstrap-switch.min.css?v=3.0.0" rel="stylesheet">

    <!-- Bootstrap Select -->
    <link href="css/libs/bootstrap-select.min.css" rel="stylesheet">

    <!-- Summernote -->
    <link href="css/libs/summernote.css" rel="stylesheet">

    <link href="css/styler/style_new.css" rel="stylesheet">

</head>

<body>
    <!-- 引入header -->
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand hidden-sm" href="index.aspx" style="padding: 0;"><img src="img/wlogo_sm.png" style="max-height: 35px; margin: 7px;">
                </a>
            </div>
            <div class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li><a href="index.aspx">开发者</a>
                    </li>
                    <li class="active"><a href="index2.aspx">企业</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="signin.aspx">登录</a>
                    </li>
                    <li><a href="signup.aspx">注册</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>



    <div class="jumbotron" style="text-align:center;">
        <img src="img/bitmap33.png" style="max-width: 350px;">
        <h1>快速识别最优秀的技术人才</h1>
        <p class="lead">简历无法代表程序员的好坏，但代码和互联网足迹可以。</p>
    </div>


    <div class="container">
        <div class="row featurette">
            <div class="col-md-4" style="text-align: center;">
                <img src="img/corp.png" class="featurette-image img-responsive" style="margin: auto;">
                <p class="lead" style="text-align: center;">面对众多千篇一律的技术简历，怎么迅速识别技术不符合要求的应聘者？</p>
            </div>
            <div class="col-md-4" style="text-align: center;">
                <img src="img/school.png" class="featurette-image img-responsive" style="margin: auto;">
                <p class="lead" style="text-align: center;">如何快速确定自己的学生真实的技术水平，是否符合企业招聘要求？</p>
            </div>
            <div class="col-md-4" style="text-align: center;">
                <img src="img/platform.png" class="featurette-image img-responsive" style="margin: auto;">
                <p class="lead" style="text-align: center;">怎么优化招聘流程，让自己的招聘网站从此与众不同？</p>
            </div>
        </div>
        <div class="row featurette">
            <h2 class="featurette-heading">
				快速搭建项目评测 <span class="text-muted">Quick and easy.</span>
			</h2>
            <div class="col-md-7">
                <ul class="site-intro">
                    <li class="lead text-muted">丰富且真实的企业项目库，满足不同技术岗位的要求与考察。</li>
                    <li class="lead text-muted">无需专业知识,智能推荐项目，迅速搭建评测环境。</li>
                    <li class="lead text-muted">一键发送多份邀请，如同技术专家在您身边帮您筛选。</li>
                </ul>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive shadow-effect" data-src="holder.js/500x500/auto" alt="500x500" src="img/website5.png">
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <h2 class="featurette-heading">
				智能生成测评报告 <span class="text-muted">See for yourself.</span>
			</h2>
            <div class="col-md-7" style="float: right;">
                <ul class="site-intro">
                    <li class="lead text-muted">多维度横向比较，去伪存真，剔除不合格人才，发掘最优的ta。</li>
                    <li class="lead text-muted">全面的编程技能评估报告和分析矩阵，深入了解真实开发能力。</li>
                    <li class="lead text-muted">智能评估编程表现，贴合企业真实编程环境，高效省时。</li>

                </ul>
            </div>
            <div class="col-md-5" style="float: left;">
                <img class="featurette-image img-responsive shadow-effect" data-src="holder.js/500x500/auto" alt="500x500" src="img/website4.png">
            </div>
        </div>


        <hr class="featurette-divider">
        <div class="row featurette">
            <h2 class="featurette-heading">
				构建技术人员最精准的画像<span class="text-muted"> Statistics don't lie. </span>
			</h2>
            <div class="col-md-7">
                <ul class="site-intro">
                    <li class="lead text-muted">通过大数据分析挖掘得出的最精准画像。</li>
                    <li class="lead text-muted">性格、兴趣爱好、技术专注度一目了然。</li>
                    <li class="lead text-muted">比简历更真实，更有料，让你看到他的另一面。</li>

                </ul>
            </div>
            <div class="col-md-5" style="float: left;">
                <img class="featurette-image img-responsive shadow-effect" data-src="holder.js/500x500/auto" alt="500x500" src="img/webfigure.png">
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <h2 class="featurette-heading">哪些团队在用猿圈</h2>
            <div class="col-md-12">
                <img class="featurette-image img-responsive" src="img/logowall.png" style="margin-bottom: 60px;">
            </div>

        </div>

        <hr class="featurette-divider">
        <div style="margin-bottom: 260px;">
            <h2 class="featurette-heading">选择最好的彼此</h2>
            <center>
                <p class="lead text-muted">
                    祝贺你！在如此短的时间内，你已经知道如何找到适合职位要求的优秀技术人才了。</br>
                    </br>
                </p>
                <div class="col-md-12">
                    <a href="signin.aspx">
                        <button class="btn btn-lg btn-new5">
                            马上体验 <i class="fa fa-chevron-right"></i>
                        </button>
                    </a>
                </div>
            </center>
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

    <!-- 引入footer -->


    <div class="afooter" style="">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a>
                    <a href="">意见反馈</a>
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
