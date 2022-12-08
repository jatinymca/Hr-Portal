<?php include 'db_connect.php' ?>

<?php
	if(isset($_GET['id'])){
		$application = $conn->query("SELECT  a.*,v.position FROM application a inner join vacancy v on v.id = a.position_id where a.rand_id=".$_GET['id'])->fetch_array();
		foreach($application as $k => $v){
			$$k = $v;
		}
		  $fname = explode('_',$resume_path);
	       unset($fname[0]);
	       $fname = implode("",$fname);
	}
	$qry = $conn->query("SELECT * FROM vacancy ");
	while($row=$qry->fetch_assoc()){
		$pos[$row['id']] = $row['position'];
	}
	$rs = $conn->query("SELECT * FROM recruitment_status ");
	while($row=$rs->fetch_assoc()){
		$stat[$row['id']] = $row['status_label'];
	}

	
?>
<div class="container-fluid">
	<form id="manage-application" name="manage-application">
		<input type="hidden" name="id" value="<?php echo isset($id)? $id : '' ?>">

<div class="row form-group my-3">
	<div class="col-md-12">
		<div class="row form-group">
			<div class="col-md-6">
				<label for="" class="control-label">Position</label>
				<select class="custom-select browser-default select2" name="position_id">
					<option value=""></option>
					<?php foreach($pos as $k => $v): ?>
						<option value="<?php echo $k ?>" <?php echo isset($position_id) && $position_id == $k ? "selected" : '' ?>><?php echo $v ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="row form-group">
			<div class="col-md-4">
				<label for="" class="control-label">First Name</label>
				<input type="text" class="form-control" name="firstname" required value="<?php echo isset($firstname) ? $firstname:''  ?>">
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Middle Name</label>
				<input type="text" class="form-control" name="middlename" value="<?php echo isset($middlename) ? $middlename:''  ?>">
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Last Name</label>
				<input type="text" class="form-control" name="lastname" required value="<?php echo isset($lastname) ? $lastname:''  ?>">
			</div>
			
			
		</div>
		<div class="row form-group">
			<div class="col-md-4">
				<label for="" class="control-label">Gender</label>
				<select name="gender" id="" class="custom-select browser-default select2">
					<option value="" > --Select-- </option>
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
				<input type="number" maxlength="10" class="form-control" name="contact"  value="<?php echo isset($contact) ? $contact:''  ?>">
			</div>
		</div>
		</div>
	</div>

		<div class="row form-group my-3">
			<div class="col-md-4">
				<label for="" class="control-label">Current Salary</label>
				<input type="text" class="form-control" name="csalary"  value="<?php echo isset($csalary) ? $csalary:''  ?>">
			</div>
			<div class="col-md-4">
				<label for="" class="control-label">Expected Salary</label>
			 <input type="text" class="form-control" name="esalary"  value="<?php echo isset($esalary) ? $esalary:''  ?>">
			</div>
			<div class="col-md-4">
 				<label for="data" class="control-label">Experience</label>
				<select class="custom-select browser-default select2"  name="experience" id=" " >
				 			<option value="" > --Select-- </option> 
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
				<select class="custom-select browser-default select2"name="dojoining"  >
					<option value="" > --Select-- </option>
					<option value="Immediate" <?php if($dojoining=='Immediate'){ echo "selected"; }?>>Immediate</option>
					<option value="10 Days"   <?php if($dojoining=='10 Days'){ echo "selected"; }?>>  10 Days</option>
					<option value="15 Days"   <?php if($dojoining=='15 Days'){ echo "selected"; }?> > 15 Days</option>
					<option value="30 Days"   <?php if($dojoining=='30 Days'){ echo "selected"; }?>>  30 Days</option>
				</select>
				<!-- <label for="" class="control-label">Date Of Joining</label>
				// <input type="text" class="form-control" name="dojoining" required="" value=""> -->
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
			<div class="col-md-12">
				<label for="" class="control-label">Source</label>  
				<select class="custom-select browser-default select2"name="source"  >
					<option value="" > --Select-- </option>
					<option value="Consultancy" <?php if($dojoining=='Consultancy'){ echo "selected"; }?>>Consultancy</option>
					<option value="Linkedin"   <?php if($dojoining=='Linkedin'){ echo "selected"; }?>> Linkedin </option>
					<option value="Facebook"   <?php if($dojoining=='Facebook'){ echo "selected"; }?> > Facebook</option>
					<option value="Any Reference"   <?php if($dojoining=='Any Reference'){ echo "selected"; }?>>  Any Reference</option>
				</select>  
				<label for="" class="control-label">Comment source</label> 
				<input type="text" class="form-control" name="Comment_source"  value="<?php echo isset($Comment_source) ? $Comment_source:''  ?>">
			</div>
		</div>
		<div class="row form-group">
			<div class="input-group col-md-12 mb-3">
				<div class="input-group-prepend">
			    <span class="input-group-text" id="">Resume</span>
			  </div>
			  <div class="custom-file">
			    <input type="file" class="custom-file-input" id="resume" onchange="displayfname(this,$(this))" name="resume"  >
			    <label class="custom-file-label" for="resume"><?php echo isset($fname) ? $fname:'Choose file'  ?></label>
			  </div>
			  
			</div>
		</div>
		<?php if(isset($id)): ?>
		<!-- <div class="row form-group">
			<div class="col-md-6">
				<label for="" class="control-label">Status</label>
				<select class="custom-select browser-default select2" name="status">
					<option value="0" <?php echo isset($process_id) && $process_id == 0? "selected" : '' ?>>New</option>
					<?php foreach($stat as $k => $v): ?>
						<option value="<?php echo $k ?>" <?php echo isset($process_id) && $process_id == $k ? "selected" : '' ?>><?php echo $v ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div> -->
		<?php endif; ?>
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
 
	  $("#manage-application").validate({    
				rules: {
				         firstname: "required", 
				         position_id: "required",
				         address: "required",

				contact: {
				        required: true,
				        minlength: 10
				      }, 

				// email: {               
				//              required: true,
				//              email: true
				//          },

				     }, 
				messages: {
				         firstname: "Enter First Name",
				         contact: "Enter contact no",
				       //  email: "Enter Valid Email ID",
				         position_id:" please select position",
				         address:" Enter your current address"
				     },
				     
				     submitHandler: function(form) {
				     	start_load();
				         $.ajax({
							url:'ajax.php?action=save_application',
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
										//location.reload()
									},1000)
								}
								if(resp == 2){
									alert_toast('Application Already Inserted.','danger')
									setTimeout(function(){
									//	location.reload()
									},1000)
								}
								else{
									alert_toast('Application Not Submitted.','warning')
									setTimeout(function(){
									//	location.reload()
									},1000)
								}
							}
						})
				     }
				 });

	});
 



  
 
</script>