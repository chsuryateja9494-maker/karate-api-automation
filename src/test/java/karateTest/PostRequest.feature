Feature: Test the functionality of post request

  Scenario: Post request
    Given url 'https://gorest.co.in/public/v2/users'
    And request {"id":8637751,"name":"Surya Teja","email":"Surya_Teja@example.com","gender":"male","status":"active"}
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer 3f7a669d860aeb69f41b84ec3ad7e66d3f9334009cb0f87c075bdc3ec766c551'
    When method post
    Then status 201

  Scenario: Post request 2
    Given url 'https://gorest.co.in/public/v2/users'
    And request
    """
    {
    "id":123456,
    "name":"Surya Teja",
    "email":"Surya_Teja2@example.com",
    "gender":"male",
    "status":"active"
    }
    """
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer 3f7a669d860aeb69f41b84ec3ad7e66d3f9334009cb0f87c075bdc3ec766c551'
    When method post
    Then status 201

  Scenario: Post request 3
    Given url 'https://gorest.co.in/public/v2/users'
    * def requestJson = {}
    * set requestJson.id = 567891
    * set requestJson.name = "Surya Teja"
    * set requestJson.email = "Surya_Teja3@example.com"
    * set requestJson.gender = "male"
    * set requestJson.status = "active"
    * set requestJson.address = []
    * set requestJson.address[0] = {}
    * set requestJson.address[0].city = 'Delhi'
    * set requestJson.address[0].country = 'India'
    And request requestJson
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer 3f7a669d860aeb69f41b84ec3ad7e66d3f9334009cb0f87c075bdc3ec766c551'
    When method post
    Then status 201