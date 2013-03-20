function toggle(name){ 
	$('.document_sections').find('button').removeClass("active");
	$('.document_sections').find('button#'+name).addClass("active");
	$('.document_sections').find('button#'+name).addClass("started");
	$('.document_sections').find('button#'+name).removeClass("not_started");
	$('.content').toggle(); 
	$('.content').find("#"+name).toggle(); 
	}
