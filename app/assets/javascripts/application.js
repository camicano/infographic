// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var refugee_count,
	production_count,
	users_count,
	number,
	canvas1,
	canvas2;

function refugeeAxis(data){
	canvas1.append("rect")
    .attr("x", number)
    .attr("y", 0)
    .attr("width", 30)
    .attr("fill", "orange")
	.transition()
    .duration(3000)
    .ease("elastic")
    .attr("height", (data.refugee_rate * 0.001));
}

function productionAxis(data){
	canvas2.append("rect")
    .attr("x", number)
    .attr("y", (300 - (data.cocaine_production.colombia * 0.2)))
    .attr("width", 30)
    .attr("fill", "blue")
    .transition()
    .duration(3000)
    .ease("elastic")
    .attr("height", (300 - (data.cocaine_production.colombia * 0.2))); 
}

function ajaxCall(year){
	if(year<2010){
		$.ajax({
			url: '/years/' + year + '/show',
			method: 'get',
			dataType: 'json'
		}).done(function(data){
			$('#year-counter').empty().append(data.year);

			count("#refugee-counter", refugee_count, (refugee_count + data.refugee_rate));
			refugee_count += data.refugee_rate;
			// $('#refugee-counter').empty().append(refugee_count);
	
			count("#production-counter", production_count || 0, (production_count + data.cocaine_production.total));
			production_count += data.cocaine_production.total;			
	
			count("#users-counter", users_count || 0, (users_count + data.user_rate));
			users_count += data.user_rate;

			setTimeout(function(){
				var year_count = data.year + 1;
				ajaxCall(year_count);
				number += 35;			
				if(data.refugee_rate){
					refugeeAxis(data);				
				}
				
				if(data.cocaine_production.total){
					productionAxis(data);	
				}
			}, 500);
		});
	}
}

function count(div, from, to){
	$(div).countTo({
        from: from,
        to: to,
        speed: 500,
        refreshInterval: 10,
    });
}

$(function(){
	canvas1 = d3.select("#graph2")
    	.append("svg")
        .attr("width", 1000)
        .attr("height", 300);


	canvas2 = d3.select("#graph1")
    	.append("svg")
        .attr("width", 1000)
        .attr("height", 300);

	$.ajax({
		url: '/years',
		method: 'get',
		dataType: 'json'
	}).done(function(data){
		$('#firstyear').append(data.year);
		$('#year-counter').append(data.year);

		count("#refugee-counter", refugee_count || 0, data.refugee_rate || 0);
		refugee_count = data.refugee_rate || 0;

		count("#production-counter", production_count || 0, data.cocaine_production.total || 0);
		production_count = data.cocaine_production.total || 0;			

		count("#users-counter", users_count || 0, data.user_rate || 0)
		users_count = data.user_rate || 0;

		setTimeout(function(){
			var year_count = data.year + 1;
			ajaxCall(year_count);
			number = 35;
			if(data.refugee_rate){
				refugeeAxis(data);				
			}

			if(data.cocaine_production.total){
				productionAxis(data);	
			}
		}, 500); 
	});
});






