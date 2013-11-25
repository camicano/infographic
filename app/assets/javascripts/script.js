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

// ########################################
// #############ONLOAD FUNCTION############
// ########################################
$(function(){
	$('#total-content').hide();
	$('#graph').hide();
	$('#production').hide();
	$('#by-year').hide();
	$('#intro').hide();
	$('#introb').hide();
	$('#introc').hide();
	$('#introd').hide();
	$('#introe').hide();
	intro();
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
    .attr("height", 200);

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
});