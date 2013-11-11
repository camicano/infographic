var refugee_count,
	production_count,
	users_count,
	number,
	canvas1,
	canvas2,
	canvas3;

function refugeeAxis(data){
	canvas1.append("rect")
    .attr("x", number)
    .attr("y", 0)
    .attr("width", 30)
    .attr("fill", "orange")
    .attr("height", 0)
	.transition()
    .ease("easeOutCubic")
    .duration(1000)

    .attr("height", (data.refugee_rate * 0.001));
}

function yearAxis(data){
	canvas3.append('<div id="year">|'+ data.year +'|</div>');
}

function productionUseAxis(data){
	var total = data.cocaine_production.total;
	var col = data.cocaine_production.colombia;

    canvas2.append("rect")
    .attr("class", "bar_total")
    .attr("x", number)
    .attr("y", 300)
    .attr("width", 15)
    .attr("fill", "blue")
    .attr('height', 0)


    .transition()
    .delay(100)
    .duration(1000)
    .ease("easeOutCubic")
    .attr("height", (300 - (total * 0.1)))
    .attr("y", (300 - (total * 0.1) || 0));

	canvas2.append("rect")
    .attr("x", number + 15)
    .attr("y", 300)
    .attr("width", 15)
    .attr("fill", "green")
    .attr("height", 0)
    .transition()
    .duration(1000)
    .ease("easeOutCubic")
	.attr("y", (300 - (col * 0.1) || 0))
    .attr("height", (300 - (col * 0.1)));
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
				yearAxis(data);		
				refugeeAxis(data);	
				productionUseAxis(data);	
				
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

	canvas3 = $('#year-axis');

	$.ajax({
		url: '/years',
		method: 'get',
		dataType: 'json'
	}).done(function(data){
		$('#firstyear').append(data.year);
		$('#year-counter').append(data.year);

		count("#refugee-counter", refugee_count || 0, data.refugee_rate || 0);
		refugee_count = data.refugee_rate || 0;

		count("#production-counter", production_count || 0, data.cocaine_production.total);
		production_count = data.cocaine_production.total || 0;			

		count("#users-counter", users_count || 0, data.user_rate || 0)
		users_count = data.user_rate || 0;

		setTimeout(function(){
			var year_count = data.year + 1;
			ajaxCall(year_count);

			number = 0;
			yearAxis(data);
			refugeeAxis(data);			
			productionUseAxis(data);	

		}, 500); 
	});
});