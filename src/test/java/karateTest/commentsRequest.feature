Feature: To check the functionality of comments API

  Scenario: Get request
    Given url 'https://gorest.co.in/public/v2/comments'
    When method get
    Then status 200
    Then print someUrlBase
#    Then print 'Access Token: ', authInfo.access_token