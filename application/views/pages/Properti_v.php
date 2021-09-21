
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
				<li>Properti</li>
			</ul>
		</div>
	</div>
<!-- //banner 2 -->

<!-- team -->
<div id="team" class="team">  
		<div class="container">
			<h3 class="tittle">
				<span>Pro</span>per<span>ti </span>
			</h3>
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
