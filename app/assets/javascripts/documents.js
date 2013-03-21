function toggle(name){ 
	var past = $('#document_sections').find('button.active');
	$('#document_sections').find('button').removeClass("active");
	$('#document_sections').find('button.'+name).addClass("active");
	$('#document_sections').find('button.'+name).addClass("started");
	$('#document_sections').find('button.'+name).removeClass("not_started");
	$('.content').children('div').hide(); 
	$('.content').find("."+name).toggle(); 
	}
