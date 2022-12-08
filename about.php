 <!-- Masthead-->
        <header class="masthead">
            <div class="container-fluid d-flex justify-content-center align-items-center">
                <div class="row  w-100 d-flex align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end mb-5 p-2 page-title" style="background: #0000002e;">
                    	 <h1 class="text-uppercase text-white font-weight-bold">About Us</h1>
                        <hr class="divider my-4" />
                    </div>
                    
                </div>
            </div>
        </header>

    <section class="page-section">
        <div class="container">
    <?php echo html_entity_decode($_SESSION['setting_about_content']) ?>        
            
        </div>
        </section>