Year.delete_all

Given(/^I visit the main page$/) do
  visit '/'
end

And(/^my database has a year object$/) do
  @year = Year.create(year: 2008, homicide_rate: 26540, refugee_rate: 268194, user_rate: 259)
  @year.cocaine_production = CocaineProduction.new(total: 770, bolivia: 80, colombia: 530, peru: 160)
  @year2 = Year.create(year: 2009, homicide_rate: 27840, refugee_rate: 388894, user_rate: 266)
  @year2.cocaine_production = CocaineProduction.new(total: 1055, bolivia: 100, colombia: 700, peru: 255)
  
  @year.year == 2008
end

Then(/^year should have many events$/) do
  @year.events.create(title: 'hello')
  @year.events.create(title: '2')
  @year2.events.create(title: 'event')
  @year2.events.create(title: '3')
  @year.events.length == 2
end

Then(/^year should have one production$/) do
  @year.cocaine_production.total == 770 
end

Then(/^there should be an ajax call where the info received is the first year info$/) do
  sleep 10  
  assert find('#firstyear').text == @year.year.to_s
end

Then(/^there should be a year counter that checks the year being displayed$/) do
  assert find('#year-counter').text == @year2.year.to_s
end

Then(/^there should be a year counter for displaying total refugees$/) do
  @refugee_rate = 0

  Year.all.each do |year|
    @refugee_rate += year.refugee_rate
  end

  assert find('#refugee-counter').text == @refugee_rate.to_s
end

Then(/^there should be a production counter for displaying total production$/) do
  @production_total = 0
  
  Year.all.each do |year|
    @production_total += year.cocaine_production.total
  end

  assert find('#production-counter').text == @production_total.to_s
end

Then(/^there should be a users counter for displaying total users$/) do
  @user_rate = 0
  
  Year.all.each do |year|
    @user_rate += year.user_rate
  end

  assert find('#users-counter').text == @user_rate.to_s
end

Then(/^there should be a title$/) do
  assert find('#title').text == "White Paradise" 
end

Then(/^there should be a menu$/) do
  assert find('#menu')
end


