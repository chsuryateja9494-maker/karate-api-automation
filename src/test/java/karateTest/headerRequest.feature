Feature: This helps to check the functionality

  Scenario: Get request
    Given url 'https://gorest.co.in/public/v2/users'
    * configure headers = {'content-type': 'application/json', 'test': 'value'}
#    we can use "configure" also instead of GHERKIN KEYWORDS
#    And headers test = {'content-type': 'application/json', 'test': 'value'}  //to pass multiple headers
#    And header content-type = 'application/json'
#    And header test = 'value'  //to pass individually
    When method get
    Then status 200
    * def responseRequest = response
    Then print 'Response is:', responseRequest