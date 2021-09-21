	<!-- banner 2 -->
	<div class="banner-2-agile">

	</div>
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<ul class="w3_short">
				<li>
					<a href="<?php echo site_url('Beranda_c') ?>">Beranda</a>
					<i>>></i>
				</li>
				<li>Galeri</li>
			</ul>
		</div>
	</div>
	<!-- //banner 2 -->


	<!-- Gallery -->
	<div class="gallery">
		<div class="container">
			<h3 class="tittle">
				<span>G</span>aler<span>i</span>
			</h3>
			<ul class="gallery_agile">
				<?php foreach ($galeri->result() as $result) : ?>
					<li>
						<div class="w3_agile_portfolio_grid">
							<a href="<?php echo base_url('assets/'); ?>img/<?php echo $result->foto_galeri ?>">
							<img src="<?php echo base_url('assets/'); ?>img/<?php echo $result->foto_galeri ?>" alt=" " class="img-responsive" />
							<div class="w3layouts_news_grid_pos">
								<div class="wthree_text"><h3>Sisir <span>Regency</span></h3></div>
							</div>
						</a>
						</div>
						
					</li>
				<?php endforeach; ?>
			</ul>
			
			<div class="clearfix"> </div>
		
		</div>
		<!-- </div> -->
		
	</div>
	<!-- //gallery -->
	
		<!-- portfolio -->
		
	
	<!-- //banner-bottom -->


	