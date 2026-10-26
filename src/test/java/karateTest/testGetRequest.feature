Feature: This helps to check the functionality

  Scenario: Get request
    Given url 'https://gorest.co.in'
    And path '/public'
    And path '/v2/users'
    When method get
    Then status 200
    * def responseRequest = response
    Then print 'Response is:', responseRequest