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

    <title>View</title>

    <style>
     
     // colors
$primary: #1d8cf8;
$secondary: #4f537b;
$info: #11cdef;
$success: #00bf9a;
$warning: #ff8d72;
$danger: #fd5d93;

 
$body-bg: #1e1e2f;
$timeline-before-bg : #222a42;
$timeline-body-bg: #27293d;
$timeline-body-round: 3px;
$timeline-body-shadow: 1px 3px 9px rgba(0,0,0,.1);

      .row_data .att{
        text-align: end;
      }


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

      .container {
    max-width: 650px;
    margin: 50px auto;
}

// typography
p {
    font-weight: 300;
    line-height: 1.5;
    font-size: 14px;
    opacity: .8;
}

.timeline {
    position: relative;
    padding-left: 25rem;
    margin: 20px 0 0 30px;
    /*color: white;*/
}
    .timeline:before {
        content: '';
        position: absolute;
        left: 0;
        top: 0;
        width: 4px;
        height: 100%;
        background: #1d8cf8;
    }

    .timeline-container {
        position: relative;
        margin-bottom: 2.5rem;;
}
        .timeline-icon {
            position: absolute;
            left: -88px;
            top: 4px;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            text-align: center;
            font-size: 2rem;
        background: #1d8cf8;
}
           .timeline-icon i {
                position: absolute;
                left: 50%;
                top: 50%;
                transform: translate(-50%, -50%);
            }

            img {
                width: 100%;
                height: 100%;
                border-radius: 50%;
            }
      

        .timeline-body {
            background: #27293d;
            border-radius: 5px;
            padding: 20px 20px 15px;
            box-shadow: $timeline-body-shadow;
}
           .timeline-body :before {
                content: '';
                background: inherit;
                width: 20px;
                height: 20px;
                display: block;
                position: absolute;
                left: -10px;
                transform: rotate(45deg);
                border-radius: 0 0 0 2px;
            }

            .timeline-title {
                margin-bottom: 1.4rem;
              }
                .badge {
                   background: #1d8cf8;
                    padding: 4px 8px;
                    border-radius: 3px;
                    font-size: 12px;
                    font-weight: bold;
                }
            

            .timeline-subtitle {
                font-weight: 300;
                font-style: italic;
                /*opacity: .4;*/
                margin-top: 16px;
                font-size: 14px;
            }
        

        // Primary Timeline
        &.primary {
            .badge,
            .timeline-icon {
                background: $primary !important;
            }
        }

        // Info Timeline
        &.info {
            .badge,
            .timeline-icon {
                background: $info !important;
            }
        }

        // Success Timeline
        &.success {
            .badge,
            .timeline-icon {
                background: $success !important;
            }
        }

        // Warning Timeline
        &.warning {
            .badge,
            .timeline-icon {
                background: $warning !important;
            }
        }

        // Dnager Timeline
        &.danger {
            .badge,
            .timeline-icon {
                background: $danger !important;
            }
        }

.author{
  font-family: inherit;
  padding: 3em;
  text-align: center;
  width: 100%;
    color: white;
 
  a:link,
  a:visited{
    color: white;
    &:hover{
      text-decoration: none;
    }
  }
  .btn:link,
  .btn:visited{
    margin-top: 1em;
    text-decoration: none;
    display: inline-block;
    font-family: inherit;
    font-weight: 100;
    color: white;
    text-align: center;
    vertical-align: middle;
    user-select: none;
    background-color: black;
    padding: 1.5em 2rem;
    border-radius: 1em;
    transition: .5s all;
    &:hover,
    &:focus,
    &:active{
      background-color: lighten(black, 10%);
    }
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
       <div class="container-fluid">


				 <div class="row">
            <div class="col-md-3 p-0">
               <?php   include 'navbar.php'; ?>
              </div>

              <div class="col-md-9 p-0">
                   <div class="container-fluid">
                    <div class="row row_data">
                      <div class="col-md-12">

                        <div class="card mb-0">
                        <table>
                <div class="card-body">
                    <tr>
                  <div class="row pb-3">
                    <div class="col-sm-2 att">
                      <p class="mb-0 ">Applied for :</p>
                    </div>
                    <div class="col-sm-10">
                      <p class="text-muted mb-0"><?php echo $position ?></p>
                    </div>
                  </div>
                    
                  <div class="row pb-3">
                    <div class="col-sm-2 att">
                      <p class="mb-0">Name :</p>
                    </div>
                    <div class="col-sm-10">
                      <p class="text-muted mb-0"><?php echo ucwords($firstname.' '.$middlename.''.$lastname) ?></p>
                    </div>
                  </div>

                  <div class="row pb-3">
                    <div class="col-sm-2 att">
                      <p class="mb-0">Gender  :</p>
                    </div>
                    <div class="col-sm-10">
                      <p class="text-muted mb-0"> <?php echo $gender ?></p>
                    </div>
                  </div>

                  <div class="row pb-3">
                    <div class="col-sm-2 att">
                      <p class="mb-0">Address :</p>
                    </div>
                    <div class="col-sm-10">
                      <p class="text-muted mb-0"> <?php echo $address ?></p>
                    </div>
                  </div>

                

                     <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0"> Cover Letter :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"> <?php echo !empty($cover_letter) ? str_replace("\n","<br>",html_entity_decode($cover_letter)) : 'None'; ?></p>
                    </div>
                  </div>
                    <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">  Resume :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"> <a href="download.php?id=<?php echo $_GET['id'] ?>" target="_blank"><?php echo $fname ?></a></p>
                    </div>
                  </div>

                    <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Current Salary :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $csalary ?></p>
                    </div>
                  </div>

                   <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Expected Salary :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $esalary ?></p>
                    </div>
                  </div>

                   <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Experience :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $experience ?></p>
                    </div>
                  </div>

                   <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Notice Period :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $dojoining ?></p>
                    </div>
                  </div>

			        

                </div>
                </table>
              </div>
            </div>
            

            <!-- <div class="col-md-6">
              <div class="card mb-md-0">
                <div class="card-body">

                    <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Current Salary :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $csalary ?></p>
                    </div>
                  </div>

                   <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Expected Salary :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $esalary ?></p>
                    </div>
                  </div>

                   <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Experience :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $experience ?></p>
                    </div>
                  </div>

                   <div class="row pb-3">
                    <div class="col-sm-4 att">
                      <p class="mb-0">Notice Period :</p>
                    </div>
                    <div class="col-sm-8">
                      <p class="text-muted mb-0"><?php echo $dojoining ?></p>
                    </div>
                  </div>


                </div>
              </div>
            </div> -->
           </div>

          </div>
	      </div>
       </div>
      </div>

            <?php 
           
           $qry=$conn->query("SELECT  * FROM `feedback` where feedback_id='$userid'");
         
             while($result=$qry->fetch_array()) { 
             $s=1;
          
              ?>
      <div class="container-fluid">
            <div class="timeline">
                <div class="timeline-container primary">
                    <div class="timeline-icon">
                        <i class="far fa-grin-wink"></i>
                    </div>
                    <div class="timeline-body">
                        <h4 class="timeline-title"><span class="badge">FEEDBACK</span></h4>
                        <p><?php echo $result['status']; ?></p>
                        <p class="timeline-subtitle"><?php echo $result['status']; ?></p>
                    </div>
                </div> 
            </div>
        </div>
             <?php $s=$s+1; }?>
       
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

		