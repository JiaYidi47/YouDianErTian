﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderHome.aspx.cs" Inherits="WebOxcoder.coderHome" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta content="猿圈网是互联网人的笔试平台,帮助企业高效省时地招募到最优秀的技术人才,企业笔试首选猿圈网。" name="description">
    <meta content="互联网招聘,笔试,在线笔试,编程笔试,企业笔试" name="keywords">

    <title>猿圈</title>
    <!-- START OF 瀑布流 -->
    <!-- <link rel="stylesheet" href="waterfall/css/reset.css" /> -->
    <link rel="stylesheet" href="waterfall/css/main.css" />
    <link rel="stylesheet" href="waterfall/css/woo.css" />
    <link rel="stylesheet" href="waterfall/css/gotop.css" />
    <!-- <link rel="stylesheet" href="waterfall/css/pagine.css" /> -->
    <link rel="stylesheet" href="waterfall/css/resize.css" />
    <!-- END OF 瀑布流 -->
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
    <link href="css/styler/carousel.css" rel="stylesheet">
    <style type="text/css">
        .companyTags li {
            margin: 5px 10px 0 0;
        }
    </style>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    <!-- START OF 瀑布流 -->

    <script src="js/libs/jquery-1.11.0.min.js"></script>
    <script src="waterfall/js/browser.js"></script>
    <script src="waterfall/js/history.js"></script>
    <script src="waterfall/js/template.min.js"></script>
    <script src="waterfall/js/tabswitch.js"></script>
    <script src="waterfall/js/woo.js"></script>
    <script src="waterfall/js/masnunit.js"></script>
    <!-- END OF 瀑布流 -->
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
                    <li class="active"><a href="coderHome.aspx">首页</a>
                    </li>
                    <li><a href="coderTask.aspx">挑战</a>
                    </li>
                    <li><a href="coderInfo.aspx">个人中心</a>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><asp:Label ID="LabelName" runat="server" Text="" class="text"></asp:Label> <b class="caret"></b></a>
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



    <!-- 轮播图 -->
    <div style="margin: -20px 0 20px 0;" id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/code2.png" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>hire.through(code)</h1>
                        <h2>= 招到优秀程序员的最佳方式</h2>
                        <br/>
                        <p>让人才更快地脱颖而出，让企业做出更明智的招聘决策</p>
                        <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p> -->
                    </div>
                </div>
            </div>
        </div>

        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <!--
<span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
-->
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <!--
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
-->
        </a>

    </div>
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-no-left-padding col-md-offset-2">
               
                <section class="middle">
                 
                    <div class="col-md-2 col-no-left-padding" style="margin-bottom: 10px;">
                        <select id="select1" class="form-control" runat="server">
                        </select>
                    </div>
                    <div class="col-md-2 col-no-left-padding" style="margin-bottom: 10px;">
                        <select id="select2" class="form-control" runat="server">
                        </select>
                    </div>
                    <div class="col-md-2 col-no-left-padding" style="margin-bottom: 10px;">
                        <select id="province" class="form-control" runat="server">
                        </select>
                    </div>
                 
                    <div style="col-md-6">
                        <div class="input-group">
                            <input id="searchCondition" runat="server" name="searchCondition" class="form-control" placeholder="请输入关键词，如公司名称等" value="" />
                            <span class="input-group-btn"><button id="search" runat="server" onServerClick="search_ServerClick" class="btn" ><i class="fa fa-search"></i></button></span>
                        </div>
                    </div>
                </section>
                
            </div>
            <div class="col-md-4 col-no-left-padding col-md-offset-8" style="margin-top: 20px;">
                
                <!--  排序这边默认什么都不选。默认排序按推荐、热度、时间搞一个算法，推荐一直在最前
                    筛选地区那边默认为用户的期望工作地点 -->
            </div>
             
            <div class="row">
                <div id="content" class="col-md-12">

                    <div id="woo-holder">
                        <a name="woo-anchor"></a>
                        <ul id="switchholder">
                            <li class="woo-swa woo-cur"></li>
                            <!-- <li class="woo-swa"><a href="javascript:;">时间升序</a></li>
									<li class="woo-swa"><a href="javascript:;">工资降序</a></li> -->
                            <!-- <li class="woo-swa"><a href="javascript:;">顺序4</a></li> -->
                        </ul>
                        <div class="woo-swb">
                            <!-- data-totalunits is set here, then pager nums would be fixed -->
                            <!-- It would have been Hasnext Mode if you didn't do it -->
                            <div id="challengeItem" runat="server" class="woo-pcont woo-masned" data-totalunits="600">
                                <!-- .woo-pcont 节点内可预先放好若干个单元(个数没有限制) -->
                                <!-- 预先放置的会被当做第一子页数据，后面会直接从第二子页开始 -->
                                <!-- 可以选择不放置 -->
                               
                              
                                
                                 </div>
                          </div>
                            <!-- <div class="col-md-12 woo-pager"></div> -->
                        </div>
                    </div>
                    <!-- Woo holder over -->
                </div>
            </div>
          
        
        <!-- /.row -->
    </div>
  
    <!-- /.container -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">意见反馈</h4>
                </div>
                <div class="modal-body">
                    <form class="">
                        <textarea class="form-control" placeholder="请输入您的反馈意见" style="min-height: 200px;"></textarea>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-new1">提交</button>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->


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
    <style type="text/css">
        /* invisible holder for the page */
        
        #win-holder {
            overflow: hidden;
            height: 0px;
        }
    </style>
    <div id="win-holder">

<!--
        <form id="woo-form-album" action="battle.action?page=">
            <input type="hidden" name="flag" value="0" />
            <input type="hidden" name="salary" value="0" />
            <input type="hidden" name="location" value="" />
            <input type="hidden" name="searchCondition" value="" />
            <input type="hidden" name="retype" value="0" />
        </form>
-->
    </div>
    <script>
        $(function () {
            // Append buttons gonext, gopre, gotop to the body as you like.
            /* $('<div id="mycontrols"><a id="gonext" href="javascript:;" title="下一页"></a><a href="javascript:;" id="gotop"></a><a id="gopre" href="javascript:;"  title="上一页"></a></div>').appendTo('body'); */

            var conf = {
                // Prefix of form id. Each form represents a subpage data request.
                "formprefix": '#woo-form-',

                // Identification of a single waterfall. There are 4 waterfalls in main.aspx.
                // You can get the form in #win-holder by putting formprefix and one identification together.
                // <form id="woo-form-(collect|original|album|favalbum)">
                "arrform": ['album'],

                // arrsplit, the last part of the url which has been split by page number.
                // The first part of the url has already been put in the action attribute of the proper form.
                // Page number can be seen neighther in the first part nor the last part.
                // Why and how we do this? Think a simple url like '/message/list/1/tail/?type=hot'
                // First, we put '/message/list/' in form action.
                // Then, we can make a hidden input in this form <input type="hidden" name="type" value="hot"/>.
                // Finally, we put '/tail/' into arrsplit.
                // Or, we could choose no hidden input and '/tail/?type=hot' into arrsplit.
                // Nevertheless, we put them together and get the entire url.
                //"arrsplit" : ['/?type=hot','','',''],
                "arrsplit": [''],

                // The extend width of each common column including margin between two cols.
                "arrmasnw": [290, 300, 300, 290],

                // The margin between two cols.
                // In this example, visible column width is 245-21=224.
                "arrmargin": [10, 20, 20, 10],

                // Diff value of special column width, default 0.
                // Why the value is 0, not [0,0,0,0]?
                // We simplified params by converting equal-value array [0,0,0,0] to single value 0.
                // Params arrsplit, arrmasnw, arrmargin and arrgap can be treated on the same principle.
                // But, param arrform is out of the principle.
                "arrfmasnw": 0,

                // The gap between units in one column.
                "arrgap": 0,

                // Install $gopre $gonext $gotop as you like.
                "gopre": '#gopre',
                "gonext": '#gonext',
                "gotop": '#gotop',

                // Footer selctor, any node below the pager can be treated as footer.
                "footer": '#footer,#preserve',

                // Open resize mode.
                // If you open it, every time window resizes, waterfall will be repainted.
                // Not recommend in ie.
                "resize": true,

                // * 每页的单元数
                "unitsnum": 24,

                // * 每一大页子页数量
                "subpagenum": 10000,

                // 每次append插入dom的单元个数
                "appendnum": 12,

                // 距离底部多远提前开始加载
                "lbias": 400,

                // Sth you do during scrolling, say, pop out a login confirm.
                "onScroll": function (tp) {
                    // tp current scrolltop
                    //			if( (typeof ALREADYNOTICED === 'undefined' || !ALREADYNOTICED) && tp >= 1000 ){
                    //				ALREADYNOTICED = true
                    //				alert("login")
                    //			}
                }
            }

            // Let's go.
            $.Woo(conf);
        })
    </script>
    <script type="text/javascript" src="js/index.js"></script>
    <!-- 引入footer -->


    <div class="afooter" style="">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 youdianertian.com <a href="">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:144201138</a><a href="">意见反馈</a>
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