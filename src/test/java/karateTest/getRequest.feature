Feature: This helps to check the functionality


  Scenario: Get request
    Given url 'https://gorest.co.in/public/v2/users'
    When method get
    Then status 200
    Then print someUrlBase
    Then print 'Access Token: ', authInfo.accessToken

  Scenario: Get request 2
    Given url 'https://gorest.co.in/public/v2/users'
    When method get
    Then status 200
    Then print someUrlBase
    Then print 'Access Token: ', authInfo.accessToken