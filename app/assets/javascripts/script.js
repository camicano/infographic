// ##################################
// #######GLOBAL VARIABLES###########
// ##################################
var refugee_count,
	production_count,
	users_count,
	number,
	canvas1,
	canvas2,
	canvas3,
	canvas;

var number1 = 0;



// ############################################
// ################FUNCTIONS###################
// ############################################
function refugeeAxis(data){
	var tip = d3.tip()
	  .attr('class', 'd3-tip')
	  .offset([0, 0])
	  .html("<p><strong>" + data.year + "</strong> </p><p>Displaced People: <span style='color:red'>" + data.refugee_rate + " people</span></p><p>Homicide: <span style='color:red'>" + data.homicide_rate + " people</span><p>");

	canvas1.call(tip);

	canvas1.append("rect")
    .attr("class", "bar_refugee") 
    .attr("x", number)
    .attr("y", 0)
    .attr("width", 35)
    .attr("height", 0)
    .on('mouseover', tip.show)
    .on('mouseout', tip.hide)
	.transition()
    .ease("easeOutCubic")
    .duration(2000)
    .attr("height", ((data.refugee_rate + data.homicide_rate) * 0.0003));

    canvas1.append("rect")
    .attr("x", number)
    .attr("y", 0)
    .attr("width", 35)
    .attr("height", 0)
    .attr("fill", "#E27A3F")
    .on('mouseover', tip.show)
    .on('mouseout', tip.hide)
	.transition()
    .ease("easeOutCubic")
    .duration(2000)
    .attr("height", (data.homicide_rate * 0.0003));
}

function productionUseAxis(data){
	var total = data.cocaine_production.total;
	var col = data.cocaine_production.colombia;

	var tip = d3.tip()
	  .attr('class', 'd3-tip')
	  .offset([0, 0])
	  .html("<p><strong>" + data.year + " Production</strong> </p><p>Total: <span style='color:red'>" + data.cocaine_production.total + " metric tons</span></p><p>Colombia: <span style='color:red'>" + data.cocaine_production.colombia + " metric tons</span><p>");

	canvas2.call(tip);

    canvas2.append("rect")
    .attr("class", "bar_total")
    .attr("x", number)
    .attr("y", 300)
    .attr("width", 35)
    .on('mouseover', tip.show)
    .on('mouseout', tip.hide)
    .transition()
    .delay(100)
    .duration(2000)
    .ease("easeOutCubic")
    .attr("height", (300 - (total * 0.1)))
    .attr("y", (300 - (total * 0.1) || 0));

	canvas2.append("rect")
    .attr("x", number)
    .attr("y", 300)
    .attr("width", 35)
    .attr("fill", "#334D5C")
    .on('mouseover', tip.show)
    .on('mouseout', tip.hide)
    .attr("height", 0)
    .transition()
    .duration(2000)
    .ease("easeOutCubic")
	.attr("y", (300 - (col * 0.1) || 0))
    .attr("height", (300 - (col * 0.1)));
	flashEvents(data);
}

function flashEvents(data){
	canvas2.append("text")
		.attr("y", -20)
		.attr("x", 300)
		.attr("class", "event_text")
		.text(data.event_title)
		.on('click', function(d) { yearSummaryView(data); })
	  .transition()
		.duration(500)
		.attr("y", 100)
	  .transition()
		.delay(1500)
		.duration(500)
		.attr("x", number)
		.attr("y", 20)
		.text(data.year);
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

function yearSummaryView(data){
		console.log(data);
		w = 110,                       
	    h = 110,                            
	    r = 45,
	    color = d3.scale.category20();
	    $('#by-year').show();
      	$('#graph').hide();
 		
 		$('#year-year').empty().append(data.year);
        $('#hom-year').empty().append(data.homicide_rate || "not available");
        $('#idp-year').empty().append(data.refugee_rate || "not available");
        $('#prod-year').empty();
        $.each(data.events, function(i, data){
        	$('#event-year').empty().append('<h2>Most relevant events</h2><br><p>'+ data.synopsis +'</p><br>');
        });

		data = [{"value": data.cocaine_production.bolivia, "label": "Bol"}, 
				{"value": data.cocaine_production.peru, "label": "Per"},
				{"value": data.cocaine_production.colombia, "label": "Col"}];

	    var vis = d3.select("#prod-year")
	        .append("svg:svg")              
	        .data([data])                   
	            .attr("width", w)           
	            .attr("height", h)
	        .append("svg:g")                
	            .attr("transform", "translate(" + r + "," + r + ")");

	    var arc = d3.svg.arc()              
	        .outerRadius(r)
	        .innerRadius(r/4);
	 
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

        arcs.append("svg:text")                                     
                .attr("transform", function(d) {                    
                d.innerRadius = 0;
                d.outerRadius = r;
                return "translate(" + arc.centroid(d) + ")";       
            })
            .attr("text-anchor", "middle")                         
          .text(function(d, i) { return data[i].label; }); 



        setTimeout(function(){
        	$('#by-year').hide();
        	$('#graph').show();
        }, 3000);     
};

function count(div, from, to){
	$(div).countTo({
        from: from,
        to: to,
        speed: 2000,
        refreshInterval: 10,
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
					w = 110,                       
				    h = 110,                            
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

function prodLegend(){
	color = d3.scale.category20();

	$('#prod-legend').append('<div><p>Bolivia:</p></div>');

	d3.select('#prod-legend')
		.append("svg")
		.attr("width", 15)
		.attr("height", 15)
	  .append("rect")
		.attr("width", 15)
		.attr("height", 15)
		.attr("fill", "#1f77b4");

	$('#prod-legend').append('<div><p>Colombia:</p></div>');

	d3.select('#prod-legend')
		.append("svg")
		.attr("width", 15)
		.attr("height", 15)
	  .append("rect")
		.attr("width", 15)
		.attr("height", 15)
		.attr("fill", "#ff7f0e");

	$('#prod-legend').append('<div><p>Peru:</p></div>');

	d3.select('#prod-legend')
		.append("svg")
		.attr("width", 15)
		.attr("height", 15)
	  .append("rect")
		.attr("width", 15)
		.attr("height", 15)
		.attr("fill", "#aec7e8");
}

function axis(){

	var x = d3.time.scale()
	    .domain([new Date(1985, 0, 1), new Date(2009, 0, 1)])
	    .range([1, 970]);

	var xAxis = d3.svg.axis()
	    .scale(x);

	var svg = d3.select("#axis").append("svg")
	    .attr("width", 1000)
	    .attr("height", 35);

	svg.append("g")
	    .attr("class", "axis")
	    .call(xAxis)
	  .selectAll("text")
	    .attr("y", 0)
	    .attr("x", 9)
	    .attr("dy", ".35em")
	    .attr("transform", "rotate(90)")
	    .style("text-anchor", "start");
}


// ########################################
// #############ONLOAD FUNCTION############
// ########################################
$(function(){
	$('#about-us').hide();
	$('#graph').show();
	$('#production').hide();
	$('#by-year').hide();

	productionDiv();
	prodLegend();
	axis();

	canvas1 = d3.select("#graph2")
    	.append("svg")
        .attr("width", 1000)
        .attr("height", 150);


	canvas2 = d3.select("#graph1")
    	.append("svg")
        .attr("width", 1000)
        .attr("height", 300);

	canvas3 = $('#year-axis');

	$('#about-button').on('click', function(){
		$('#about-us').show();
		$('#graph').hide();
		$('#production').hide();
		$('#by-year').hide();
	});

	$('#home-button').on('click', function(){
		$('#about-us').hide();
		$('#graph').show();
		$('#production').hide();
		$('#by-year').hide();
	});

	$('#production-button').on('click', function(){
		$('#about-us').hide();
		$('#graph').hide();
		$('#production').show();
		$('#by-year').hide();
	});

	$('#year-button').on('click', function(){
		$('#about-us').hide();
		$('#graph').hide();
		$('#production').hide();
		$('#by-year').show();
	});

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
});