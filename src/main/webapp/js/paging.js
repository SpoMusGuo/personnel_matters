$(document).ready(function(){
	$("#pageSelect").change(function () {
		
		window.location.replace("index_emp?keyword=" + $("#txtSearch").val() + "&currentPage=" + $(this).val());
	});
	$("#txtSearch").keydown(function(e) {
		if(e.keyCode == 13) {
			search();
		}
	});
});

function search() {
	
	window.location.assign("index_emp?keyword=" + $("#txtSearch").val());
}