Scenario: Open EPAM.com and check title
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/"
Then the page title should be equal to "EPAM | Software Engineering & Product Development Services"

Scenario: Switch Light / Dark mode on EPAM.com
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/"
When I switch the theme
Then the page theme should be opposite

Scenario: Change language to Ukrainian on EPAM.com
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/"
When I change language to "Ukrainian"
Then the site content should be in "Ukrainian"

Scenario: Check policies list at the bottom of EPAM.com
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/"
When I scroll to the page bottom
Then the policies list should have "INVESTORS", "COOKIE POLICY"[...continues]

Scenario: Verify location swap by region on EPAM.com
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/"
When I navigate to "Our Locations"
Then I should see regions "AMERICAS", "EMEA", "APAC"

Scenario: Test search functionality with "AI" on EPAM.com
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/"
When I search for "AI"
Then search results should display

Scenario: Validate form fields on EPAM contact page
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/about/who-we-are/contact"
When I input invalid data in required fields
Then I should see error messages

Scenario: Check company logo navigation on EPAM.com
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/about"
When I click on the company logo
Then I should be redirected to the home page

Scenario: Download report from EPAM about page
Meta: @browser chrome
Given I am on a page with the URL "https://www.epam.com/about"
When I download "EPAM Corporate Overview 2023" from "EPAM at a Glance" section
Then the downloaded file should be "EPAM_Corporate_Overview_2023.pdf"