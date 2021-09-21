	
<!-- banner 2 -->
<div class="banner-2-agile">

</div>
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<ul class="w3_short">
				<li>
					<a href="<?php echo site_url('Beranda_c') ?>">Beranda</a><i>>></i>
					<a href="<?php echo site_url('Properti_c') ?>">Properti Kami</a><i>>></i>
				</li>
				<li>Detail Properti</li>
			</ul>
		</div>
	</div>
<!-- //banner 2 -->

	<!-- news -->
	<div class="special-services"> 
		<div class="container">  
		<h3 class="tittle">
				<span>D</span>etail Pro<span>perti</span>
			</h3>
			<div class="agileits-title"> 
			</div>
			<div class="banner_bottom_agile_grids">
			<div class="news_w3l_agileinfo">
				<div class="col-md-7 agile-w3grid-img img_agile">
					<a href="" class="wthree-agile-img">  
						<img src="<?php echo base_url('assets/'); ?>img/<?php echo $detail->foto_properti ?>" class="img-responsive" alt=""/>
					</a>  
				</div>
				<div class="col-md-5 agile-news-w3grid-text"> 
					<h4><span><?php echo $detail->nama_properti ?></span> Property</h4>
					<p><?php echo $detail->deskripsi_properti ?></p>
				</div> 
				<div class="clearfix"> </div>
			</div> 
		   </div>
		</div>
	</div>
	<!-- //news --> 