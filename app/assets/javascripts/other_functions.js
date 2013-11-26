function count(div, from, to){
  $(div).countTo({
    from: from,
    to: to,
    speed: 2000,
    refreshInterval: 10,
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

function intro() {
  $('#intro').addClass('animated fadeInDown');
  $('#intro').show();

  setTimeout(function(){
  	$('#introb').addClass('animated fadeInDown').show();
  }, 100);

  setTimeout(function(){
  	$('#introc').addClass('animated fadeInDown').show();
  }, 200);

  setTimeout(function(){
  	$('#introd').addClass('animated fadeInDown').show();
  }, 300);

  setTimeout(function(){
	$('#introe').addClass('animated fadeInDown').show();
  }, 3000);

  $('#introe').on('click', function(){
  $('#intro').hide();
  $('#introb').hide();
  $('#introc').hide();
  $('#introd').hide();
  $('#introe').hide();
  $('#about-us').hide();
  $('#graph').show();
  $('#production').hide();
  $('#by-year').hide();
  $('#total-content').addClass('animated fadeInDown').show();
  firstAjax();	
  });
}
