$(document).ready(function(){
	$("#pageSelect").change(function () {
		
		window.location.replace("index_emp?currentPage=" + $(this).val());
	})
});

