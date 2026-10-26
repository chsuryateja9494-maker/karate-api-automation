Feature: Test Expression

  Scenario: Expression
  * def custInformation = {'firstName': 'Surya12', 'lastName': 'Teja12'}
    Given print custInformation
    * def firstName = 'Surya'
    * def lastName = 'Teja'
    * def custInformation = { firstName: '#(firstName)', lastName: '#(lastName)' }
    Then print custInformation
    * def custInformation = { 'fullname' : '#("Hello "+ firstName + " " +lastName)' }
    Then print custInformation
    * def age = 30
    * def male = true
    * def custInformation = { 'fullname' : '#("Hello "+ firstName + " " +lastName)','age': #(age), 'male': #(male) }
    Then print custInformation
    * def cust = read('file:testdata/custInformation.json')
    Then print cust
    * def FullName = 'Surya Teja'
    Then match FullName == '#(firstName + " " + lastName)'