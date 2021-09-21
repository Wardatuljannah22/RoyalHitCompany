	<!-- Slider -->
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides" id="slider">
				<?php foreach ($slider->result() as $result) : ?>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top1" style="background-image: url(<?php echo base_url('assets/')?>img/<?php echo $result->foto_slider ?>);">
							<div class="container">
								<div class="slider-info">
									<h3>Welcome to Royal Hit Property</h3>
									<h4>Sisir Regency
										<span>Malang</span>
									</h4>
									<!-- <a href="#" data-toggle="modal" data-target="#myModal">Pilih Rumah<i class="fa fa-caret-right" aria-hidden="true"></i></a> 
								    <a href="<?php echo site_url('Kontak_c') ?>">Kontak Kami<i class="fa fa-caret-right" aria-hidden="true"></i></a>  -->
								</div>
							</div>
						</div>
					</li>
				<?php endforeach; ?>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //Slider -->

		<!-- about -->
		<div class="about" id="about"> 
		<div class="container"> 
				<h3 class="tittle">
				<span>T</span>entang K<span>ami</span>
				</h3>
			<div class="agileits-title"> 
				<div class="agileits-title-left">
				
				</div>
				<!-- <div class="agileits-title-right">
					<p class="para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium dapibus efficitur in, auctor eget elit. Lorem ipsum dolor sit amet</p>
				</div> -->
				<div class="clearfix"> </div>
			</div>
			<?php foreach ($tentang->result() as $result) : ?>
			 <div class="wthree-about">
				  <div class="col-md-5 wthree-ab-left">
				      <img src="<?php echo base_url('assets/'); ?>img/<?php echo $result->foto_tentang ?>" class="responsive" alt=" " />
                  </div>
				  <div class="col-md-7 wthree-ab-right">
				     <h4><?php echo $result->nama_depan ?></span> <?php echo $result->nama_belakang ?></h4>
					 <?php echo $result->deskripsi_tentang ?>
					
				  </div>
				  <?php endforeach; ?>
				  <div class="clearfix"></div>
			 </div>
		</div>
	</div>
	<!-- //about --> 

	<!-- team -->
	<div id="team" class="team">  
		<div class="container">
			<div class="team-row w3ls-team-row">  
			<?php $a=0; $b=3; 
				foreach ($properti->result() as $result) { 
					$a++; 
					if ($a <= $b) { ?>
				<div class="col-md-4 col-sm-4 col-xs-4 team-grids">   
					<div class="w3ls-effect">
						<img src="<?php echo base_url('assets/'); ?>img/<?php echo $result->foto_properti ?>" alt="img">
						<div class="view-caption">
								<a href="<?php echo site_url('Properti_c/detail/'.$result->id_properti) ?>"><h3><?php echo $result->nama_properti ?></h3></a>
								<p><?php echo substr($result->deskripsi_properti, 0, 100). " ..... " ?></p>
						</div>
					</div>    
				</div>
				<?php } } ?>
			
		
				<div class="clearfix"> </div> 
			</div>
		</div>
	</div>
	<!-- //team -->
