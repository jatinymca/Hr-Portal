
<style>
</style>
<nav id="sidebar" class='mx-lt-5 bg-primary' >
		
		<div class="sidebar-list">

				<a href="index.php?page=home" class="nav-item nav-home"><span class='icon-field'><i class="fa fa-home"></i></span> Home</a>
				<a href="index.php?page=applications" class="nav-item nav-applications"><span class='icon-field'><i class="fa fa-user-tie"></i></span> Applications</a>	
				<a href="index.php?page=agents_stats" class="nav-item nav-vacancy"><span class='icon-field'><i class="fa fa-list-alt"></i></span> Agents Stats </a>
				<a href="index.php?page=Emp_details" class="nav-item Emp_details"><span class='icon-field'><i class="fa fa-user-tie"></i></span> Document Upload</a>
				<a href="index.php?page=emp_doc" class="nav-item Emp_details"><span class='icon-field'><i class="fa fa-download"></i></span> Documents Download</a>
				<?php if($_SESSION['login_type'] == 1): ?>
				<a href="index.php?page=vacancy" class="nav-item nav-vacancy"><span class='icon-field'><i class="fa fa-list-alt"></i></span> Add Vacancy </a>	
				<a href="index.php?page=recruitment_status" class="nav-item nav-recruitment_status"><span class='icon-field'><i class="fa fa-th-list"></i></span> Status Category</a>		
				<a href="index.php?page=user_group" class="nav-item nav-user_group"><span class='icon-field'><i class="fa fa-th-list"></i></span> Group User</a>		
				<a href="index.php?page=users" class="nav-item nav-users"><span class='icon-field'><i class="fa fa-users"></i></span> Users</a>
				<!-- <a href="index.php?page=position" class="nav-item nav-users"><span class='icon-field'><i class="fa fa-users"></i></span> Add Position</a> -->
				<a href="index.php?page=site_settings" class="nav-item nav-site_settings"><span class='icon-field'><i class="fa fa-cogs"></i></span> Settings</a>
				
			<?php endif; ?>
		</div>

</nav>
<script>
	$('.nav-<?php echo isset($_GET['page']) ? $_GET['page'] : '' ?>').addClass('active')
</script>
