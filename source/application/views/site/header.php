<?php if($this->authentication->chk_login()==FALSE)redirect('index'); ?>
<div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="<?php echo base_url(); ?>" style="width: 70%;">
			<img src="<?php echo base_url(); ?>assets/img/logo.png" alt="logo" class="logo-default img-responsive" style="margin-top: 8px; margin-left: 0px;"/>
			</a>
			<div class="menu-toggler sidebar-toggler">
				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN PAGE ACTIONS -->
		<!-- BEGIN PAGE TOP -->
		<div class="page-top">
			
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right" style="text-align: right;">
					<li class="separator hide"> </li>
					<li class="dropdown dropdown-extended dropdown-tasks dropdown-dark" id="header_task_bar">
			            <?php $string = file_get_contents("./uploads/update/version.json");
			            $version_data = json_decode ($string,true);
			            $version=$version_data[0]["version"]; ?>
						<a href="javascript:;" class="dropdown-toggle chk_update" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
							<i class="icon-info font-red"></i> <span class="badge badge-danger"> <?php echo $version; ?> </span> 
						</a>
					</li>
					
					<?php $stud_id=$this->session->userdata('stud_id');
            		$stud_data = $this->site_model->stud_data($stud_id); ?>
					<li class="dropdown dropdown-user dropdown-dark">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<span class="username username-hide-on-mobile">
						<?php echo (isset($stud_data->stud_name) && !empty($stud_data->stud_name))?$stud_data->stud_name:'';?> <?php echo (isset($stud_data->stud_last_name) && !empty($stud_data->stud_last_name))?$stud_data->stud_last_name:'';?> </span>
						<!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
						<img alt="Photo" class="img-circle" src="<?php echo base_url(); ?>uploads/stud_photos/<?php echo(isset($stud_data->stud_photo) && !empty($stud_data->stud_photo))?$stud_data->stud_photo:'student.jpg'?>"/>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="javascript:void(0);" class="chk_update">
								<i class="icon-calendar"></i> Updates <span class="badge badge-danger">
								<?php echo $version; ?> </span></a>
							</li>
							<li>
								<a href="<?php echo base_url(); ?>dashboard">
								<i class="icon-user"></i> Profile </a>
							</li>
							<li>
								<a href="javascript:;" class="popup_save" rev="change_pass" data-title="Change Password">
								<i class="fa fa-wrench"></i> Change Password </a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="<?php echo base_url(); ?>logout">
								<i class="fa fa-sign-out"></i> Log Out </a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix"> </div>