<?php include('db_connect.php');?>

<div class="container-fluid">
	
	<div class="col-lg-12">
		<div class="row">
			<!-- FORM Panel -->
			<div class="col-md-4">
			<form action="" id="Group-status-cat">
				<div class="card">
					<div class="card-header">
						  Group Form
				  	</div>
					<div class="card-body">
							<input type="hidden" name="id">
							<div class="form-group">
								<label class="control-label">Group User</label>
								<input type="text" name="groupname" id="" cols="30" rows="2" class="form-control"></input>
							</div> 
					</div>
							
					<div class="card-footer">
						<div class="row">
							<div class="col-md-12">
								<button class="btn btn-sm btn-primary col-sm-3 offset-md-3"> Save</button>
								<button class="btn btn-sm btn-default col-sm-3" type="button" onclick="_reset()"> Cancel</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			</div>
			<!-- FORM Panel -->

			<!-- Table Panel -->
			<div class="col-md-8">
				<div class="card">
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th class="text-center">S.NO</th>
									<th class="text-center">Group Category</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								$i = 1;
								$types = $conn->query("SELECT * FROM user_group   order by id asc");
								while($row=$types->fetch_assoc()):
								?>
								<tr>
									<td class="text-center"><?php echo $i++ ?></td>
									
									<td class="">
										 <p> <b><?php echo $row['groupname'] ?></b></p>
									</td>
									<td class="text-center">
										<!-- <button class="btn btn-sm btn-primary edit_scat" type="button" data-id="<?php echo $row['id'] ?>" data-status_label="<?php echo $row['status_label'] ?>"  >Edit</button> -->
										<button class="btn btn-sm btn-danger delete_scat" type="button" data-id="<?php echo $row['id'] ?>">Delete</button>
									</td>
								</tr>
								<?php endwhile; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Table Panel -->
		</div>
	</div>	

</div>
<style>
	
	td{
		vertical-align: middle !important;
	}
	td p{
		margin: unset
	}
	img{
		max-width:100px;
		max-height: :150px;
	}
</style>
<script>
	function _reset(){
		$('[name="id"]').val('');
		$('#Group-status-cat').get(0).reset();
	}
	
	$('#Group-status-cat').validate({
		 	rules:{ 

				status_label:"required"
				 
		},
		message:{
					status_label:"please select "
					 
		},
		submitHandler: function(form) { 
		start_load()
		$.ajax({
			url:'ajax.php?action=save_group_status',
			data: new FormData($('#Group-status-cat')[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully added",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
				else if(resp==2){
					alert_toast("Data successfully updated",'success')
					setTimeout(function(){
						location.reload()
					},1500)

			    	}
		     	}
		    })
	      }
       })
 
	$('.edit_scat').click(function(){
		start_load()
		var cat = $('#manage-status-cat')
		cat.get(0).reset()
		cat.find("[name='id']").val($(this).attr('data-id'))
		cat.find("[name='status_label']").val($(this).attr('data-status_label'))
		end_load()
	})
	$('.delete_scat').click(function(){
		_conf("Are you sure to delete this recruitment status category","delete_scat",[$(this).attr('data-id')])
	})
	function displayImg(input,_this) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
        	$('#cimg').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}
	function delete_scat($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_group_status',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>