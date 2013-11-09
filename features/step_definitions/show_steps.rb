Given(/^I visit the main page$/) do
  visit '/'
end

And(/^my database has a year object$/) do
  @y = Year.create(year: 1990, homicide_rate: 200, )
  @y.year == 1990  
end

Then(/^year should have many events$/) do
  @y.events.create(name: 'hello')
  @y.events.create(name: '2')

  @y.events.length == 2
end

Then(/^year should have one production$/) do
  @y.cocaine_production = CocaineProduction.new(total: 1000)  

  @y.cocaine_production.total == 1000  
end

Then(/^there should be an ajax call where the info received is the first year info$/) do
  find
end

Then(/^there should be a year counter for displaying total refugees$/) do
  sleep 10
  assert find('#deaths-counter').text == 0
end

Then(/^as the new data comes in the counter number should go up$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^there should be a production counter for displaying total production$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^there should be a users counter for displaying total users$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^there should be a year counter that checks the year being displayed$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^number on the counter should be the number of the year$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^for each event on the year there should be a div displaying the synopsis$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^for each year there should be a bar chart displaying homicide numbers divided info per country$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^for each year there should be a bar chart displaying production numbers divided info per country$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^year counter reaches a certain number$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^there is an ajax call for the next year$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^all the database items are in the browser$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be able to see the entire information displayed on the page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be able to browse the menu$/) do
  if years.length == 20
    assert find('#menu')
    assert find('#about_me')
  end 
end

