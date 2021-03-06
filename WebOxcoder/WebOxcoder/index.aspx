﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebOxcoder.index" %>

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
                </button>
                <a class="navbar-brand hidden-sm" href="index.aspx" style="padding: 0;"><img src="img/wlogo_sm.png" style="max-height: 35px; margin: 7px;">
                </a>
            </div>
            <div class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.aspx">开发者</a>
                    </li>
                    <li><a href="index2.aspx">企业</a>
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
        <h1>提升编程能力，用代码脱颖而出</h1>
        <!-- <h1>提升编程能力，用代码证明实力</h1> -->
        <!-- <p class="lead">在企业发布的评测挑战中，发现欠缺的知识，并且针对性的学习。</p> -->
        <p class="lead">在获得工作机会的同时，识别您在编程过程中的不足，提供量身定制的学习内容，提升您的编程能力！</p>
    </div>

    <div class="container">
        <!-- <div class="row featurette">
				<div class="col-md-4" style="text-align:center;">
					<img src="img/corp.png" class="featurette-image img-responsive" style="margin:auto;">
					<p class="lead" style="text-align:center;">面对众多千篇一律的技术简历，怎么迅速识别技术不符合要求的应聘者？</p>
				</div>
				<div class="col-md-4" style="text-align:center;">
					<img src="img/school.png" class="featurette-image img-responsive" style="margin:auto;">
					<p class="lead" style="text-align:center;">如何快速确定自己的学生真实的技术水平，是否符合企业招聘要求？</p>
				</div>
				<div class="col-md-4" style="text-align:center;">
					<img src="img/platform.png" class="featurette-image img-responsive" style="margin:auto;">
					<p class="lead" style="text-align:center;">怎么优化招聘流程，让自己的招聘网站从此与众不同？</p>
				</div>
			</div> -->
        <div class="row featurette">
            <h2 class="featurette-heading">
				个性化学习，查漏补缺 <span class="text-muted">Customized learning.</span>
			</h2>
            <div class="col-md-7">
                <ul class="site-intro">
                    <li class="lead text-muted">根据挑战测评过程，智能评估编程表现，识别掌握一般的知识点。</li>
                    <li class="lead text-muted">针对性学习，精选不同教育资源，极速提升编程能力。</li>
                    <li class="lead text-muted">学习过程中，获得工作机会，一举两得。</li>

                </ul>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive shadow-effect" data-src="holder.js/500x500/auto" alt="500x500" src="img/website7.png">
            </div>
        </div>
        <hr class="featurette-divider">

        <div class="row featurette">
            <h2 class="featurette-heading">
				用编程证明实力 <span class="text-muted">Code is your new CV.</span>
			</h2>
            <div class="col-md-7" style="float: right;">
                <ul class="site-intro">
                    <li class="lead text-muted">用技术人才最擅长的方式来展现简历背后的真正编程实力。</li>
                    <li class="lead text-muted">独创云编译系统，代码提示，直接编译运行、调试代码，模拟真实开发环境。</li>
                    <li class="lead text-muted">秀出你的代码，用代码为自己带盐。</li>
                </ul>
            </div>
            <div class="col-md-5" style="float: left;">
                <img class="featurette-image img-responsive shadow-effect" data-src="holder.js/500x500/auto" alt="500x500" src="img/website6.png">
            </div>
        </div>



        <hr class="featurette-divider">
        <div class="row featurette">
            <h2 class="featurette-heading">
				当前支持的语言平台<span class="text-muted">(其他语言持续开发中)</span>
			</h2>
            <div class="col-md-12">
                <img class="featurette-image img-responsive" src="img/languages.png" style="margin: auto; margin-bottom: 60px;">
            </div>

        </div>

        <hr class="featurette-divider">
        <div style="margin-bottom: 260px;">
            <h2 class="featurette-heading">遇见最好的自己</h2>
            <center>
                <p class="lead text-muted">
                    祝贺你！在如此短的时间内，你已经找到了最适合你的学习及工作方式。</br>
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
                    © 2015 youdianertian.com <a href="">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:144201138</a>
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
