<?php include 'admin/db_connect.php' ?>

<?php
	$qry = $conn->query("SELECT * FROM vacancy where id=".$_GET['id'])->fetch_array();
	foreach($qry as $k =>$v){
		$$k = $v;
	}
?>
<div class="container-fluid">
	<form id="manage-application">
		<input type="hidden" name="id" value="">
		<input type="hidden" name="position_id" value="<?php echo $_GET['id'] ?>">
	<div class="col-md-12">
		<div class="row">
			<h3>Application Form for <?php echo $position ?></h3>
		</div>
		<hr>
		<div class="row form-group">
			<div class="col-md-4">
				<label for="" class="control-label">First Name</label>
				<input type="text" class="form-control" name="firstname"  value="<?php echo isset($firstname) ? $firstname:''  ?>">
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Middle Name</label>
				<input type="text" class="form-control" name="middlename" required  value="<?php echo isset($middlename) ? $middlename:''  ?>">
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Last Name</label>
				<input type="text" class="form-control" name="lastname" required value="<?php echo isset($lastname) ? $lastname:''  ?>">
			</div>
			
		</div>
		<div class="row form-group">
			<div class="col-md-4">
				<label for="" class="control-label">Gender</label>
				<select name="gender" id="" class="custom-select browser-default">
					<option <?php echo isset($gender) && $gender == 'Male' ? "selected" : '' ?>>Male</option>
					<option <?php echo isset($gender) && $gender == 'Female' ? "selected" : '' ?>>Female</option>
				</select>
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Email</label>
				<input type="email" class="form-control" name="email" value="<?php echo isset($email) ? $email:''  ?>">
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Contact</label>
				<input type="text" class="form-control" name="contact"  value="<?php echo isset($contact) ? $contact:''  ?>">
			</div>
		</div>

		
	

		<div class="row form-group my-3">
			<div class="col-md-4">
				<label for="" class="control-label">Current Salary</label>
				<input type="text" class="form-control" name="csalary" value="<?php echo isset($csalary) ? $csalary:''  ?>">
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Expected Salary</label>
			 <input type="text" class="form-control" name="esalary" value="<?php echo isset($esalary) ? $esalary:''  ?>">
			</div>
			<div class="col-md-4">
 				<label for="data" class="control-label">Experience</label>
				<select class="custom-select browser-default select2"  name="experience" id=" " 
				>


					<option value="" > --Select-- </option>
                              <option>--Select--</option>
                              <option value="Fresher" <?php if($experience=='Fresher'){ echo "selected"; } ?> >Fresher</option>
                              <option value="0-1 Year" <?php if($experience=='0-1 Year'){ echo "selected"; } ?>>0-1 Year</option>
                              <option value="1.5 Year" <?php if($experience=='1.5 Year'){ echo "selected"; } ?>>1.5 Year</option>
                              <option value="1-3 Year"  <?php if($experience=='1-3 Year'){ echo "selected"; } ?>>1-3 Year</option>
                              <option value="3-5 Years"  <?php if($experience=='3-5 Year'){ echo "selected"; } ?> >3-5 Years</option>
                              <option value="5-10 Years"  <?php if($experience=='5-10 Year'){ echo "selected"; } ?>>5-10 Years</option>
                               
  						 </select>
				
			</div>
		</div>	
	
		 <div class="row form-group">
			<div class=" col-md-4">
				 <label for="" class="control-label">Notice Period </label>
				<select class="custom-select browser-default select2"name="dojoining" class="control-label" >
					<option value="" > --Select-- </option>
					<option value="Immediate" <?php if($dojoining=='Immediate'){ echo "selected"; } ?> >Immediate</option>
					<option value="10 Days" <?php if($dojoining=='10 Days'){ echo "selected"; } ?>>10 Days</option>
					<option value="15 Days" <?php if($dojoining=='15 Days'){ echo "selected"; } ?> >15 Days</option>
					<option value="30 Days" <?php if($dojoining=='30 Days'){ echo "selected"; } ?>>30 Days</option>
				</select>
				<!-- <label for="" class="control-label">Date Of Joining</label>
				// <input type="text" class="form-control" name="dojoining" ="" value=""> -->
			</div>
			</div>

	
		<div class="row form-group">
			<div class="col-md-12">
				<label for="" class="control-label">Address</label>
				<textarea name="address" id="" cols="100" rows="3"  class="form-control"><?php echo isset($address) ? $address:''  ?></textarea>
			</div>

		</div>
		<div class="row form-group">
			<div class="col-md-12">
				<label for="" class="control-label">Cover Letter</label>
				<textarea name="cover_letter" id="" cols="30" rows="3" placeholder="(Optional)" class="form-control"><?php echo isset($cover_letter) ? $cover_letter:''  ?></textarea>
			</div>
		</div>
		<div class="row form-group">
			<div class="input-group col-md-12 mb-3">
				<div class="input-group-prepend">
			    <span class="input-group-text" id="">Resume</span>
			  </div>
			  <div class="custom-file">
			    <input type="file" class="custom-file-input" id="resume" onchange="displayfname(this,$(this))" name="resume" accept="application/msword,text/plain, application/pdf">
			    <label class="custom-file-label" for="resume"><?php echo isset($fname) ? $fname:'Choose file'  ?></label>
			  </div>
			  
			</div>
		</div>
	</div>
	</form>
</div>

<script>
	function displayfname(input,_this) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
        	console.log(input.files[0].name)
        	_this.siblings('label').html(input.files[0].name);
        }

        reader.readAsDataURL(input.files[0]);
    }
} 
$(document).ready(function(){
	$('.select2').select2({
		width:"100%",
		placeholder:'Please select here'
	})
	$('#manage-application').validate({
		rules: {
				         firstname: "required", 
				         resume: "required",
				         address: "required",

				contact: {
				        required: true,
				        minlength: 10
				      }, 

				email: {               
				             required: true,
				             email: true
				         },

				     }, 
				messages: {
				         firstname: "Enter First Name",
				         contact: "Enter contact no",
				         email: "Enter Valid Email ID",
				         resume:"upload resume in pdf format",
				         address:" Enter your current address"
				     },
				     
				     submitHandler: function(form) {
													start_load()
													$.ajax({
														url:'admin/ajax.php?action=save_application',
														data: new FormData($('#manage-application')[0]),
													    cache: false,
													    contentType: false,
													    processData: false,
													    method: 'POST',
													    type: 'POST',
														error:err=>{
															console.log(err)
														},
														success:function(resp){
															if(resp == 1){
																alert_toast('Application successfully submitted.','success')
																setTimeout(function(){
																	location.reload()
																},1000)
															}
														}
			})
		}

	})
})

</script>