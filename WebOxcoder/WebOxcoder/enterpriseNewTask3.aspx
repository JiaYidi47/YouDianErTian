<%@ Page Language="C#"  AutoEventWireup ="true" CodeBehind="enterpriseNewTask3.aspx.cs" Inherits="WebOxcoder.enterpriseNewTask3" %>


    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 新增挑战</title>

<!-- Bootstrap core CSS -->
<link href="../bootstrap/css/bootstrap.min.css?v=3.1.1" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="../fonts/font-awesome/css/font-awesome.min.css?v=4.0.3"
	rel="stylesheet">

<!-- Bootstrap Switch -->
<link href="../css/libs/bootstrap-switch.min.css?v=3.0.0" rel="stylesheet">

<!-- Bootstrap Select -->
<link href="../css/libs/bootstrap-select.min.css" rel="stylesheet">

<!-- IcoMoon CSS -->
<link href="../fonts/icomoon/style.css?v=1.0" rel="stylesheet">



<!-- Summernote -->
<link href="../css/libs/summernote.css" rel="stylesheet">
<link href="../css/libs/summernote-bs3.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../css/styler/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="../css/styler/style_new.css" rel="stylesheet" type="text/css">




    

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
											<img src="../img/new_c2.png">
										</div>
										<h4>已选择挑战项目</h4>
										<div class="row col-md-12 col-no-left-padding">
											
											
												<div class="row">
													
                                                  <asp:Repeater id="quizListChooseRepeater" runat="server">
                                                      	<ItemTemplate>

                                                         <div class="col-md-4">
															<div class="panel panel-default project">
																<div class="panel-body" style="padding-bottom: 0;">
																	<div class="row">
																		<div class="col-xs-12">
																			<div class="pull-left">
																				<h4>
																					<%# Eval("name") %>
																				</h4>
																				<h5 class="text-muted">
																					<%# Eval("intro") %>
																					
																				</h5>
																			</div>
																			<div class="pull-right client-info">
																				<a style="color: white"
																					href="enterpriseNewTask3.aspx?flag=del&relevel=<%= level %>&pid=<%# Eval("id") %>&exercise=<%=exerciseStr %>&difficulty=<%#Eval("questionLevel") %>&retype=<%=type %>""
																					class="btn btn-primary btn-sm">删除</a>
																			</div>
																		</div>
																		<!-- /.col-xs-12 -->
																		<div class="col-md-12" style="min-height: 68px;">
																			<ul class="companyTags">
																				
																					<li>&#21152;&#36895;&#20256;&#24863;&#22120;</li>
																				
																					<li>&#25391;&#21160;&#22120;</li>
																				
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


                                                            </ItemTemplate>
                                                       </asp:Repeater>

												</div>
												<!-- 错误信息 -->
												<font id="wrongTip" color=red runat="server"> </font>
												<!-- 成功信息 -->												
												<font id="rightTip" color=green runat="server"> </font>												

												<font color=green> </font>
												<form action="enterpriseNewTask3.aspx?flag=sub"
													class="form-horizontal" enctype="multipart/form-data"
													method="post">
													<input name="isChain" type="hidden" value="1" /> <input
														name="reid" type="hidden"
														value="1518" /> <input
														type="hidden" name='exercise'
														value="<%=exerciseStr %>" /> <input
														type="hidden" name='flag' value="sub" /> <input
														type="hidden" name="order"
														value="2" />
                                                    <input
														type="hidden" name="level"
														value="<%=level %>" />
                                                    <input
														type="hidden" name="type"
														value="<%=type %>" />
													<div class="form-group form-actions">
														<div class="col-md-12" style="margin-bottom: 20px;">
															
																<button type="submit" id="btn_save" class="btn btn-new1 pull-right"><%if (exerciseArray.Length >= 3) Response.Write("保存&发布挑战"); else Response.Write("请选择3道题目"); %></button>														
														</div>
													</div>

												</form>
											
										</div>
										<div class="row col-md-12">
											<h4 class="pull-left">挑战项目</h4>
											<div class="pull-right">
												<div style="display: inline-block; vertical-align: top;">
													<form class="input-group" style="width: 200px"
														action="enterpriseNewTask3.action" method="post">
														<input type="hidden" name="flag" value="difficulty" /> <input
															type="hidden" name="pid"
															value="399" /> <input
															type="hidden" name="exercise"
															value="395,399" /> <input
															type="hidden" name="difficulty"
															value="" /> <input
															name="keyword" class="form-control" placeholder="请输入关键字"
															value=""><span
															class="input-group-btn">
															<button type="submit" class="btn">
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
													
													


                                                        <asp:Repeater id="quizListRepeater" runat="server">
                                                      		<ItemTemplate>
																
                                                                  <div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4><%# Eval("name") %></h4>
																						<h5 class="text-muted">
                                                                                           <%# Eval("intro") %> </h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white"
																							href="enterpriseNewTask3.aspx?flag=new&relevel=<%= level %>&pid=<%# Eval("id") %>&exercise=<%=exerciseStr+"*" %><%# Eval("id") %>&difficulty=<%# Eval("questionLevel")%>&retype=<%=type %>"
																			class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">                                                                                                                                                                                                                                                                                                                                                         
																						<li>Android </li>
																						<li>TextView</li>
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

                                                            </ItemTemplate>
                                                    </asp:Repeater>													

															
													
												</div>
											</div>
										</div>

									</div>
									<!--/.row   -->
								</div>

							</div>

							<!-- 引入right -->
							

<div class="col-md-3 profile-info">
	<div class="panel-user">
		<div class="panel-heading">
			<div class="panel-title">
				<div class="media">
					<a class="pull-left"> <img
						src="../img/1302.png" class="media-object">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							<!-- <span class="welcome">Hello</span> -->
							<span>&#21271;&#20140;&#24066;&#23567;&#28165;&#26032;&#31185;&#25216;&#26377;&#38480;&#20844;&#21496; </span>
						</h4>
						<span class="text-muted"><small>上次登录日期: <br> 2015-06-25 21:45:10
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
	<script src="../js/libs/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="../bootstrap/js/bootstrap.min.js?v=3.1.1"></script>

	<!-- Sparkline -->
	<script src="../js/libs/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="../js/libs/bootstrap-switch.min.js?v=3.0.0"></script>

	<!-- Bootstrap Select -->
	<script src="../js/libs/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="../js/libs/bootstrap-filestyle.js"></script>



	<!-- Summernote -->
	<script src="../js/libs/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="../js/styler/script.js"></script>

	<!-- 引入footer -->
	

