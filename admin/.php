<?php 
include 'db_connect.php';
$application = $conn->query("SELECT  a.*,v.position FROM application a inner join vacancy v on v.id = a.position_id where a.id=".$_GET['id'])->fetch_array();
foreach($application as $k => $v){
	$$k = $v;
}
       $fname = explode('_',$resume_path);
       unset($fname[0]);
       $fname = implode("",$fname);
?> 
           
<!Doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<?php echo "Welcome back ". $_SESSION['login_name']."!"  ?>
    <title>View</title>

    <style>
      .att p{
        text-align: end;
      }

      .main_cont{
        margin-top: 3.7rem;
      }
      #sidebar{
        width: 320px !important;
      }

      .row_data{
        margin-top: 2rem;
      }
    </style>
    <?php  include 'header.php';  ?>
    <?php  include 'topbar.php';  ?>
  </head> 
<body>
		<!-- <p><b>Applied for :</b><?php echo $position ?></p>
		<p><b>Name :</b><?php echo ucwords($firstname.' '.$middlename.''.$lastname) ?></p>
		<p><b>Gender :</b><?php echo $gender ?></p>
		<p><b>Address :</b><?php echo $address ?></p>
		<p><b>Current Salary :</b><?php echo $csalary ?></p>
		<p><b>Expected Salary :</b><?php echo $esalary ?></p>
		<p><b>Experience :</b><?php echo $experience ?></p>
		<p><b>Notice Period :</b><?php echo $dojoining ?></p> -->
		<!-- <p><b>Email :</b><?php echo $email ?></p>
		<p><b>Cover Letter :</p>
			<hr>
		<?php //echo !empty($cover_letter) ? str_replace("\n","<br>",html_entity_decode($cover_letter)) : 'None'; ?>
		<hr>
		<p><b>Resume</p> -->
       <div class="container-fluid main_cont">


		 <div class="row">
            <div class="col-md-3 p-0">
                 <?php   include 'navbar.php'; ?>
              </div>

              <div class="col-md-9 p-0">
                    
                   <div class="card">
					<div class="card-header">
						<div class="row">
							<div class="col-lg-12">
								<span><large><b>Application List</b></large></span>
								<button class="btn btn-sm btn-block btn-primary btn-sm col-md-2 float-right" type="button" id="new_application"><svg class="svg-inline--fa fa-plus fa-w-14" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg><!-- <i class="fa fa-plus"></i> --> New Applicant</button>
							</div>
						</div>
						
					</div>
					<div class="card-body">
						
						 
						
					</div>
				</div>
            

          </div>
	</div>
</div>
 
       
       <!-- <table>
         <tbody>
           
         
      <th class="text-center" colspan="2"><b>FEEDBACK</b></th>
           <?php 
           
           $qry=$conn->query("SELECT  * FROM `feedback` where feedback_id='$userid'");
           $result=$qry->fetch_array();
             ?>
             <tr>
              <td class="text-center"><b>Feedback Status</b></td>
              <td class="text-center"><?php echo $result['status']; ?></td>
             </tr>

             <tr>
              <td class="text-center"><b>Interview Start Time</b></td>
              <td class="text-center"><?php echo $result['interview_stime']; ?></td>
             </tr>

             <tr>
              <td class="text-center"><b>Interview Start Time</b></td>
              <td class="text-center"><?php echo $result['interview_etime']; ?></td>
             </tr>

              <tr>
              <td class="text-center"><b>Feedback Text</b></td>
              <td class="text-center"><?php echo $result['feedback_text']; ?></td>
             </tr>
             </tbody>
       </table> -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>

		