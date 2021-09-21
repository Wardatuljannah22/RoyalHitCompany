<!-- footer -->
<div class="footer">
		<div class="container">
			<div class="agileinfo_copyright">
			<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with by
					<a href="https://w3layouts.com/">W3layouts</a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer -->

	<!-- js-scripts -->
	<!-- js -->
	<script type="text/javascript" src="<?php echo base_url('assets/'); ?>js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/'); ?>js/bootstrap.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/'); ?>js/lightbox-plus-jquery.min.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js -->
	<!-- Baneer-js -->
	<script src="<?php echo base_url('assets/'); ?>js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!-- js for portfolio lightbox -->
	<script src="<?php echo base_url('assets/'); ?>js/jquery.chocolat.js "></script>
	<link rel="stylesheet " href="<?php echo base_url('assets/'); ?>css/chocolat.css " type="text/css " media="screen ">
	<!--light-box-files -->
	<script type="text/javascript ">
		$(function () {
			$('.w3_agile_portfolio_grid a').Chocolat();
		});
	</script>
	<!-- /js for portfolio lightbox -->
	<!-- //Baneer-js -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="<?php echo base_url('assets/'); ?>js/move-top.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/'); ?>js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>

	<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Classy Decor
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-6 w3_modal_body_left">
							<img src="images/16.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-6 w3_modal_body_right">
							<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
								consequatur.
								<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //bootstrap-pop-up -->
	
	<!-- start-smoth-scrolling -->
	<!-- //js-scripts -->
</body>

</html>