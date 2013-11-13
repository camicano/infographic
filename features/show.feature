Feature: Show
        In order to the end result of the infograph
        As a viewer
        I want to see the progression over several years

        Scenario: Animating infographic
                Given I visit the main page
                And my database has a year object 
                Then year should have many events 
                Then year should have one production 
                Then there should be a title
                Then there should be a menu

                # weekend tests
                Then there should be an ajax call where the info received is the first year info
                Then there should be a year counter that checks the year being displayed
                Then there should be a year counter for displaying total refugees
                Then there should be a production counter for displaying total production
                Then there should be a users counter for displaying total users
                


