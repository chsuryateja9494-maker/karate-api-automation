Feature: This helps to check the functionality

  Scenario: Get request
    Given url 'https://gorest.co.in/public/v2/users'
    * configure headers = {'content-type': 'application/json', 'test': 'value'}
    #    we can use "configure" also instead of GHERKIN KEYWORDS
        And params {'gender': 'male', 'status': 'active'}
    #    And param gender = 'male'
    #    And param status = 'active'    //to pass individually
    When method get
    Then status 200
    * def responseRequest = response
    Then print 'Response is:', responseRequest
    Then print someUrlBase