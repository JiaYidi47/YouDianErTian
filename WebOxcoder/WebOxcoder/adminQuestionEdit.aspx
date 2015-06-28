<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminQuestionEdit.aspx.cs" Inherits="WebOxcoder.AdminQuestionEdit" %>

<!DOCTYPE html>
<html>

<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <title>猿圈</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- FontAwesome 4.3.0 -->
    <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="admin/plugins/ionicons-2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="admin/dist/css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="admin/dist/css/skins/skin-blue-light.min.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="skin-blue-light sidebar-mini">
    <div class="wrapper">

<header class="main-header">
            <!-- Logo -->
            <a href="adminHome.aspx" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>猿圈</b>后台管理</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>猿圈</b>&nbsp;后台管理</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="admin/dist/img/user2-160x160.jpg" class="user-image" alt="User Image" />
                                <span class="hidden-xs">Admin</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- Menu Body -->
                                <li>
                                    <a href="adminChangePwd.aspx" class="btn btn-default btn-flat">修改密码</a>
                                    <a href="index.aspx" class="btn btn-default btn-flat">注销</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="treeview">
                        <a href="adminCoderManage.aspx">
                            <i class="fa fa-dashboard"></i>
                            <span>程序员管理</span>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-dashboard"></i>
                            <span>企业管理</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="adminEnterpriseCheck.aspx"><i class="fa fa-circle-o"></i>企业审核</a>
                            </li>
                            <li><a href="adminEnterpriseInfo.aspx"><i class="fa fa-circle-o"></i>企业信息</a>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview active">
                        <a href="#">
                            <i class="fa fa-files-o"></i>
                            <span>题库管理</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li class="active"><a href="adminQuestionInquire.aspx"><i class="fa fa-circle-o"></i>查询题目</a>
                            </li>
                            <li><a href="adminQuestionAdd.aspx"><i class="fa fa-circle-o"></i>增加题目</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-circle-o">
                                    </i>类别管理<i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="adminCategoryInquire.aspx"><i class="fa fa-circle-o"></i>查询类别</a>
                                    </li>
                                    <li><a href="adminCategoryAdd.aspx"><i class="fa fa-circle-o"></i>增加类别</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-dashboard"></i>
                            <span>购买管理</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="adminRechargeInfo.aspx"><i class="fa fa-circle-o"></i>充值信息</a>
                            </li>
                            <li><a href="adminRechargeCode.aspx"><i class="fa fa-circle-o"></i>优惠码</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>题库管理<small>编辑题目</small></h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-xs-8">
                        <div class="box box-info">
                            <div class="box-header">
                                <h3 class="box-title">题目信息</h3>
                            </div>
                            <!-- /.box-header -->
                            <form id="form1" class="form-horizontal" runat="server">
                              <div class="box-body">
                                <div class="form-group">
                                        <label class="col-sm-3 control-label">题目名称&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox type="text" class="form-control" ID="questionName" placeholder="请输入题目名称" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">题目简介&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox class="form-control" TextMode="MultiLine" ID="questionIntr" runat="server" placeholder="请输入题目简介"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">题目知识点&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox type="text" class="form-control" placeholder="请输入题目知识点" ID="questionKnow" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">题目开发能力&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox type="text" class="form-control" placeholder="请输入题目开发能力" runat="server" ID="questionAbility"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">题目难度&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" ID="questionLevel" runat="server">
                                                <option value="5">★★★★★</option>
                                                <option value="4">★★★★</option>
                                                <option value="3">★★★</option>
                                                <option value="2">★★</option>
                                                <option value="1">★</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">题目内容&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <asp:FileUpload ID="questionContentUploader" runat="server" />
                                            <asp:Label ID="content" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">题目答案&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <asp:FileUpload ID="questionAnswerUploader" runat="server" />
                                            <asp:Label ID="answer" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">题目类别&nbsp;&#58;</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList" runat="server" DataSourceID="SqlDataSource" DataTextField="name" DataValueField="id">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:oxcoderConnectionString %>" SelectCommand="SELECT [id],[name] FROM [type]"></asp:SqlDataSource>
                                        </div>

                                    </div>
                               </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <asp:Button type="submit" ID="questionEditCancel" runat="server" class="btn btn-info btn-flat pull-right" Text="取消" OnClick="questionEditCancel_Click" />
                                </span>
                                <asp:Button type="cancel" ID="questionEditSubmit" runat="server" class="btn btn-info btn-flat pull-right" Text="确认" OnClick="questionEditSubmit_Click" />
                            </div>
                            <!-- /.box-footer -->
                          </form>
                        </div>
                        <!-- /.box -->
                    </div>
                </div>
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <strong>Copyright &copy; 2015 <a href="#">有点儿甜</a>.</strong> All rights reserved.
        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="admin/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.2 -->
    <script src="admin/plugins/jQueryUI/jquery-ui-1.11.2.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="admin/plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="admin/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='admin/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="admin/dist/js/app.min.js" type="text/javascript"></script>
</body>

</html>
