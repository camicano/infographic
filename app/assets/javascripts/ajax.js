function firstAjax(){
	$.ajax({
		url: '/years',
		method: 'get',
		dataType: 'json'
	}).done(function(data){
		$('#firstyear').append(data.year);
		$('#year-counter').append(data.year);

		count("#refugee-counter", refugee_count || 0, data.refugee_rate || 0);
		refugee_count = data.refugee_rate || 0;

		count("#production-counter", production_count || 0, data.cocaine_production.colombia || 0);
		production_count = data.cocaine_production.colombia || 0;			

		count("#users-counter", users_count || 0, data.user_rate || 0)
		users_count = data.user_rate || 0;

		setTimeout(function(){
			var year_count = data.year + 1;
			ajaxCall(year_count);

			number = 0;
			refugeeAxis(data);			
			productionUseAxis(data);
		}, 2000); 
	});
}

function productionDiv(){
	$.ajax({
		url: '/years/all',
		method: 'get',
		dataType: 'json'
	}).done(function(data){
		$.each(data, function(index, element){
			if(element.cocaine_production.total>200){
				w = 100,                       
		    h = 100,                            
				r = 45,
		    color = d3.scale.category20();

				data = [{"value": element.cocaine_production.bolivia, "label": "Bolivia"}, 
								{"value": element.cocaine_production.peru, "label": "Peru"},
								{"value": element.cocaine_production.colombia, "label": "Colombia"}];

		    var vis = d3.select("#prod")
		      .append("svg:svg")              
		      .data([data])                   
		      .attr("width", w)           
		      .attr("height", h)
		      .append("svg:g")                
	        .attr("transform", "translate(" + r + "," + r + ")")

		    var arc = d3.svg.arc()              
	        .outerRadius(r)
	        .innerRadius(r/2);
		 
		    var pie = d3.layout.pie()       
		      .value(function(d) { return d.value; });  
		 
		    var arcs = vis.selectAll("g.slice") 
	        .data(pie)                  
	        .enter()    
	        .append("svg:g")             
		      .attr("class", "slice");  
			 
        arcs.append("svg:path")
          .attr("fill", function(d, i) { return color(i); } )
          .attr("d", arc);  

        vis.append("text")
	      	.attr("dy", ".35em")
	      	.style("text-anchor", "middle")
	      	.text(element.year);                          
			}
		});
	});
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
	
			count("#production-counter", production_count || 0, (production_count + data.cocaine_production.colombia));
			production_count += data.cocaine_production.colombia;			
	
			count("#users-counter", users_count || 0, (users_count + data.user_rate));
			users_count += data.user_rate;

			setTimeout(function(){
				var year_count = data.year + 1;
				ajaxCall(year_count);
				
				number += 40;	
				refugeeAxis(data);	
				productionUseAxis(data);	
				
			}, 2000);
		});
	}
}