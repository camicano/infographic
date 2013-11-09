Feature: Show
        In order to the end result of the infograph
        As a viewer
        I want to see the progression over several years

        Scenario: Animating infographic
                Given I visit the main page
                And my database has a year object 
                Then year should have many events 
                Then year should have one production 
                
                # weekend tests
                Then there should be an ajax call where the info received is the first year info
                Then there should be a year counter for displaying total refugees
                And as the new data comes in the counter number should go up
                Then there should be a production counter for displaying total production
                And as the new data comes in the counter number should go up
                Then there should be a users counter for displaying total users
                And as the new data comes in the counter number should go up
                Then there should be a year counter that checks the year being displayed
                And number on the counter should be the number of the year
                Then for each event on the year there should be a div displaying the synopsis


                Then for each year there should be a bar chart displaying homicide numbers divided info per country
                Then for each year there should be a bar chart displaying production numbers divided info per country
                When year counter reaches a certain number 
                Then there is an ajax call for the next year
                When all the database items are in the browser
                Then I should be able to see the entire information displayed on the page
                Then I should be able to browse the menu