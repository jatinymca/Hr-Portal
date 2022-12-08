<?php include 'db_connect.php';

 include('auth.php');
 
 ?>
<style>
   @media (min-width: 768px)
.offset-md-3 {
    margin-left: 0%; ! important }
</style>

<div class="containe-fluid">
<!-- 
	<div class="row">
		<div class="col-lg-12">
			
		</div>
	</div> -->

	<div class="row ml-3 mr-3">
			<div class="col-lg-12">
			<div class="card">
				<div class="card-body">
				<?php echo "Welcome back ". $_SESSION['login_name']."!"  ?>
									
				</div>
				<hr>
				<div class="row ml-2 mr-2" style="  margin-left: -33% !Important ;  ">
				<div class="col-md-3 offset-md-3">
                        <div class="card bg-primary text-white mb-3">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="mr-3">
                                        <div class="text-white-75 small">New Applicants</div>
                                        <div class="text-lg font-weight-bold">
                                        	<?php 

                                        	$applicant = $conn->query("SELECT * FROM application where position_id!= 0 $user_group_Query_hm");
                                        	echo $applicant->num_rows;
                                        	 ?>
                                        		
                                    	</div>
                                    </div>
                                    <i class="fa fa-user-tie"></i>
                                </div>
                            </div>
                            
                    </div>
		      </div>
             
              <div class="col-md-3">
                  <div class="card bg-warning text-white mb-3">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="mr-3">
                                        <div class="text-white-75 small">Active Vacanies</div>
                                        <div class="text-lg font-weight-bold">
                                            <?php 
                                            $vacancies = $conn->query("SELECT * FROM vacancy where status = 1  ");
                                            echo $vacancies->num_rows;
                                             ?>
                                                
                                        </div>
                                    </div>
                                    <i class="fa fa-search"></i>
                                </div>
                            </div>
                            
                    </div>
              </div>
		</div>
    </div>
	</div>

</div>
<script>
	
</script>