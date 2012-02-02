<script type="text/javascript">
	$(function () {
		// hiding and showing
		$('.preview').click(function() {
			var source = $(this).attr('src');
			$('#bg').html(source);
		});
		
		// shadow on mouseover
		$('.preview').mouseover(function () {
			$(this).addClass('.box-shadow()');
		})
		.mousedown(function() {
			$(this).removeClass('.box-shadow()');
		})
		.mouseup(function() {
			$(this).addClass('.box-shadow()');
		})
		.mouseleave(function() {
			$(this).removeClass('.box-shadow()');
		});

		// remove shadow from all others
	});

</script>