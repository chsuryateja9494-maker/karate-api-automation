Feature: This helps to check the functionality

  Background:
    * callonce read('classpath:karateTest/commentsRequest.feature')
    Given print 'check functionality of call once'

  Scenario: Get request
    Given url 'https://gorest.co.in/public/v2/users'
    When method get
    Then status 200
    Then print someUrlBase

  Scenario: Get request 2
    Given url 'https://gorest.co.in/public/v2/users'
    When method get
    Then status 200
    Then print someUrlBase