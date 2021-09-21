
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
				<li>Kontak</li>
			</ul>
		</div>
	</div>
<!-- //banner 2 -->

	<!-- banner-bottom -->
	<div id="about" class="banner-bottom">
		<div class="container">
			<h3 class="tittle">
				<span>Kon</span>tak Ka<span>mi</span>
			</h3>
			<?php foreach ($kontak->result() as $result) : ?>
			<div class="w3ls_banner_bottom_grid1">
				<div class="col-md-7 w3l_banner_bottom_right">
					<?php echo $result->script_embed_code ?>
				</div>
		 			
				<div class="col-md-5 w3l_banner_bottom_right">
					<div class="agileits_w3layouts_heding two">
						
					</div>
					<p><?php echo $result->deskripsi_kontak ?></p>
					<p><i class="fa fa-email"></i>Email : <?php echo $result->email_kontak ?></p>
					<p>Nomor : <?php echo $result->nomor_kontak ?></p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>