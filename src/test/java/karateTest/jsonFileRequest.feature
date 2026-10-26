Feature: This helps to check the functionality with json file request

  Scenario: Read Json file
    Given url 'https://gorest.co.in/public/v2/users'
    And def postRequestPayload = read('file:testdata/postRequestPayload.json')
    And postRequestPayload.email = 'Surya_Teja' + Math.random() + '@gmail.com'
    And set postRequestPayload.first_name = 'Surya'
    And remove postRequestPayload.id
    And def address =
    """
      [
        {
          "street": "123 Main St",
          "city": "Anytown",
          "state": "CA",
          "zip": "12345"
        }
      ]
    """
    And set postRequestPayload.address = address
    And postRequestPayload.address[0].city = 'Delhi'
    And request postRequestPayload
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer 3f7a669d860aeb69f41b84ec3ad7e66d3f9334009cb0f87c075bdc3ec766c551'
    When method post
    Then status 201