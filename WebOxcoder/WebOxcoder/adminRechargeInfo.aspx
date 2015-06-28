<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminRechargeInfo.aspx.cs" Inherits="WebOxcoder.adminRechargeInfo" %>

<!DOCTYPE html>
<html>

<head>
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
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-files-o"></i>
                            <span>题库管理</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="adminQuestionInquire.aspx"><i class="fa fa-circle-o"></i>查询题目</a>
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
                    <li class="treeview active">
                        <a href="#">
                            <i class="fa fa-dashboard"></i>
                            <span>购买管理</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li class="active"><a href="adminRechargeInfo.aspx"><i class="fa fa-circle-o"></i>充值信息</a>
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
                <h1>购买管理<small>充值信息</small></h1>
            </section>
            <!-- Main content -->
            <form runat="server">
            <section class="content">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="input-group">
                            <asp:TextBox type="text" name="message" placeholder="请输入企业名称" class="form-control" runat="server" ID="orderCondition" OnTextChanged="orderCondition_TextChanged"/>
                            <span class="input-group-btn">
                        <asp:Button type="button" class="btn btn-primary btn-flat" Text="查询" ID="search" runat="server"></asp:Button>
                      </span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box box-info">
                            <div class="box-header">
                                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                      <ContentTemplate>
                                         <asp:DropDownList ID="orderRecord" runat="server" AutoPostBack="True" OnSelectedIndexChanged="orderRecord_SelectedIndexChanged">
                                            <asp:ListItem Value="0">全部</asp:ListItem>
                                            <asp:ListItem Value="1">今日</asp:ListItem>
                                         </asp:DropDownList>
                                     </ContentTemplate>
                                    </asp:UpdatePanel>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body table-responsive no-padding">
                                <asp:GridView class="table table-hover" runat="server" ID="orderInformationGridView" AutoGenerateColumns="False" GridLines ="None" AllowPaging="true" OnPageIndexChanging="orderInformationGridView_PageIndexChanging" >
                                    <Columns>
                                        <asp:BoundField  DataField="companyEmail" HeaderText="企业名称" />
                                        <asp:BoundField  DataField="type" HeaderText="充值项" />
                                        <asp:BoundField  DataField="money" HeaderText="金额" />
                                    
                                    </Columns>
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="首页" PreviousPageText ="上一页" NextPageText="下一页" LastPageText="尾页" />
                                </asp:GridView>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                </div>
            </section>
            </form>
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
