$(document).on("page:load", bindDate);
$(document).on("page:load", setDayOfWeek);

function setDayOfWeek(){
	year = $("#commitment_start_at_1i").val();
	month = $("#commitment_start_at_2i").val();
	day = $("#commitment_start_at_3i").val();
		
	$("#dayOfWeek").html(getDayOfWeek(year, month, day));
}

function bindDate(){
	$("#commitment_start_at_3i").change(function(){
		$("#dayOfWeek").html(getDayOfWeek(year, month, day));
	});

	$("#commitment_start_at_2i").change(function(){
		$("#dayOfWeek").html(getDayOfWeek(year, month, day));
	});

	$("#commitment_start_at_1i").change(function(){
		$("#dayOfWeek").html(getDayOfWeek(year, month, day));
	});
}

function getDayOfWeek(year, month, day){
	year = $("#commitment_start_at_1i").val();
	month = $("#commitment_start_at_2i").val();
	day = $("#commitment_start_at_3i").val();
	date = new Date(year + "-" + month + "-" + day);
	return date.getDayName();
}	


