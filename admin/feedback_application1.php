<?php include 'db_connect.php' ?>

<?php
session_start();
	$userid=$_GET['id'];
	$rs = $conn->query("SELECT * FROM recruitment_status ");
	 
?>
<div class="container-fluid">
	<form id="feedback_application">
		<input type="hidden" name="id" value="<?php echo  $userid ?>">
	    <!-- <input type="hidden" name="allid" value="<?php echo  $allid ?>"> -->

<div class="row">
	<div class="col-md-12">
		<div class="row form-group">
			<div class="col-md-6">
				<label for="" class="control-label">Status</label>
				<select class="custom-select browser-default select2" name="Status">
					<option value="" > --Select-- </option>
				  	<?php while($row=$rs->fetch_assoc()){
								  ?>
						<option value="<?php echo $row['status_label']; ?>"><?php echo $row['status_label']; ?></option>
					<?php } ?>
				</select>
			</div>
			<div class="col-md-6">
				<label for="" class="control-label">Final Status</label>
				<select class="custom-select browser-default select2" name="fStatus" id="final">
					 
					<option value="" > --Select-- </option>
					   <option value="PASS">PASS</option>
					  <option value="FAIL">FAIL</option>
					  <option value="Hierd">Hierd</option>
					  <option value="Nextdate">Next Date</option>
					 
				</select>
			</div>
		</div>
		<div class="row ">
			<div class="col-md-6"  id="nextinterview" style="display:none;">
				<div class="input-group-prepend">
			      <label for="" class="control-label">Next Interview </label><br>
			    </div>
			     <div class="col-md-6"> 
			       <input type="input" class="form-control" name="nextview" required >
			    </div>
			</div>

			<div class="col-md-6"  id="nextitimming" style="display:none;">
				<div class="input-group-prepend">
			      <label for="" class="control-label">Next Interview Timming</label><br>
			    </div>
			     <div class="col-md-6"> 
			       <input type="datetime-local" class="form-control" name="nextinterview" required >
			    </div>
			</div>

		</div>

		<div class="row form-group">
			<div class="col-md-12 p-0" style="display: flex;">
			    <div class="col-md-6">
			    <label for="" class="control-label">Start</label>
			    <input type="time" class="form-control" name="stime" required  >
			    </div>

			    <div class="col-md-6">
			    <label for="" class="control-label">End</label>
			   	<input type="time" class="form-control" name="etime" required >
			   </div>
			</div>
	</div>

			  </div> 
		</div>


	  <div class="row">
			<div class="col-md-12">
				<label for="" class="control-label">Feedback</label>
				<textarea name="Feedback" id="" class="form-control" required > </textarea>
			</div>
		</div>
		
	</form>
	</div>
</div>
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

	$('#feedback_application').validate({
		rules:{ 

				Status:"required",
				fStatus:"required",
				Feedback:"required",
		},
		message:{
					Status:"please select Status",
					fStatus:"please select Status",
					Feedback:"Enter Feedback"
		},
		submitHandler: function(form) { 
										//start_load()
										$.ajax({
											url:'ajax.php?action=feedback_application',
											data: new FormData($('#feedback_application')[0]),
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
 
$('#final').change(function(){
	let t= $(this).val();
	 
	if(t=='PASS' || t=='Nextdate'){ 
			$('#nextitimming').show();
			$('#nextinterview').show();
	}
	else{ 
			$('#nextitimming').hide();
			$('#nextinterview').hide();
	} 
})
</script>