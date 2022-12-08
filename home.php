<style>
#portfolio .img-fluid{
    width: calc(100%);
    height: 30vh;
    z-index: -1;
    position: relative;
    padding: 1em;
}
.vacancy-list{
cursor: pointer;
}
span.hightlight{
    background: yellow;
}

.masthead{
    padding-top: 0 !important;
    height: 40vh !important;
    min-height: 40vh !important;
    display: flex;
    justify-content: center;
    align-items: flex-end;
}

@media screen and (max-width: 767px){
    .mb-5 {
   margin-bottom: 0 !important;
  }

    .vacancy-list{
    width: 100% !important;
}

.find_JOb {
 
    transform: translate(20% , 10%);
   }

   .input-group {
 
    width: 60%;
}
}




</style>

<?php 
include 'admin/db_connect.php'; 
?>

        <header class="masthead">
        	<div class="container find_JOb p-0 m-0">
        		<div class="row w-100 d-flex align-items-center justify-content-center text-center">
        			<div class="col-lg-12 align-self-end pt-4 pl-4 page-title">
                       <h2 class="text-white text-left"><?php echo $_SESSION['setting_name']; ?></h2>
        			</div>
        		</div>

        		<div class="row w-100 d-flex align-items-center justify-content-center text-center">
        			   <div class="col-md-12 text-left">
                        <div class="card bannerCard">
                            <div class="card-body">
                               <div class="form-group">
                                   <div class="input-group">
                                       <input type="text" class="form-control" id="filter">
                                       <div class="input-group-append">
                                           <span class="input-group-text"><i class="fa fa-search"></i></span>
                                       </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
        		</div>
            


        	</div>
            <!-- <div class="contjustify-content-center align-items-center">
                <div class="row w-100 d-flex align-items-center justify-content-center text-center">
                    <div class="col-lg-12 align-self-end mb-2 p-4 page-title">
                    	<h3 class="text-white text-left">Welcome to <?php echo $_SESSION['setting_name']; ?></h3>
                        <hr class="divider my-4" />
                    <div class="col-md-12 mb-2 text-left">
                        <div class="card">
                            <div class="card-body">
                                  <h4 class="text-center">Find Vacancies</h4>
                               <div class="form-group">
                                   <div class="input-group">
                                       <input type="text" class="form-control" id="filter">
                                       <div class="input-group-append">
                                           <span class="input-group-text"><i class="fa fa-search"></i></span>
                                       </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>                        
                    </div>
                    
                </div>
            </div> -->
        </header>
        <section id="list">
            <div class="container pt-2">
                <h2 class="text-center">Vacancy List</h2>
                <hr class="divider">
                <div class="ddata">
                <?php
                $vacancy = $conn->query("SELECT * FROM vacancy order by date(date_created) desc ");
                while($row = $vacancy->fetch_assoc()):
                    $trans = get_html_translation_table(HTML_ENTITIES,ENT_QUOTES);
                    unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
                    $desc = strtr(html_entity_decode($row['description']),$trans);
                    $desc=str_replace(array("<li>","</li>"), array("",","), $desc);
                ?>
                <div class="card vacancy-list" data-id="<?php echo $row['id'] ?>">
                    <div class="card-body">
                        <h3><b class="filter-txt"><?php echo $row['position'] ?></b></h3>
                        <span><small>Needed: <?php echo $row['availability'] ?></small></span>
                        <hr>
                        <larger class="truncate filter-txt"><?php echo strip_tags($desc) ?></larger>
                        <br>
                        <hr class="divider"  style="max-width: calc(80%)">

                    </div>
                </div>
                <br>
                <?php endwhile; ?>
            </div>
            </div>
        </section>


<script>
    $('.card.vacancy-list').click(function(){
        location.href = "index.php?page=view_vacancy&id="+$(this).attr('data-id')
    })
    $('#filter').keyup(function(e){
        var filter = $(this).val()

        $('.card.vacancy-list .filter-txt').each(function(){
            var txto = $(this).html();
            txt = txto
            if((txt.toLowerCase()).includes((filter.toLowerCase())) == true){
                $(this).closest('.card').toggle(true)
            }else{
                $(this).closest('.card').toggle(false)
               
            }
        })
    })
</script>