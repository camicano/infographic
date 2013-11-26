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
    .attr("y", 200)
    .attr("width", 35)
    .on('mouseover', tip.show)
    .on('mouseout', tip.hide)
    .transition()
    .delay(100)
    .duration(2000)
    .ease("easeOutCubic")
    .attr("height", (200 - (total * 0.1)))
    .attr("y", (200 - (total * 0.1) || 0));

  canvas2.append("rect")
    .attr("x", number)
    .attr("y", 200)
    .attr("width", 35)
    .attr("fill", "#334D5C")
    .on('mouseover', tip.show)
    .on('mouseout', tip.hide)
    .attr("height", 0)
    .transition()
    .duration(2000)
    .ease("easeOutCubic")
    .attr("y", (200 - (col * 0.1) || 0))
    .attr("height", (200 - (col * 0.1)));
    
  flashEvents(data);
}

