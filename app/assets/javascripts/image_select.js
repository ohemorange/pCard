<script type="text/javascript">
	$(function () {
		// hiding and showing
		$('.preview').click(function() {
			var source = $(this).attr('src');
			$('#bg').html(source);
		});
		
		// shadow on mouseover
		$('.preview').mouseover(function () {
			$(this).addClass('shadow');
		})
		.mousedown(function() {
			$(this).removeClass('shadow');
		})
		.mouseup(function() {
			$(this).addClass('shadow');
		})
		.mouseleave(function() {
			$(this).removeClass('shadow');
		});

		// remove shadow from all others
	});

</script>