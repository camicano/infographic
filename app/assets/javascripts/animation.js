function flashEvents(data){
  canvas2.append("text")
    .attr("y", -20)
    .attr("x", 200)    
    .text(data.event_title)
    .on('click', function(d) { yearSummaryView(data); })
    .transition()
    .duration(500)
    .attr("class", "event_text")
    .attr("y", 100)
    .transition()
    .delay(1500)
    .duration(500)
    .attr("x", number)
    .attr("y", 20)
    .text(data.year);
}

function yearSummaryView(data){
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
  	$('#event-year').empty().append('<h2>'+data.title+'</h2><p>'+ data.synopsis +'</p><br>');
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
