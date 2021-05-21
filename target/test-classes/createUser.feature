Feature: Users

  Scenario: I want to create a new user

    Given I have authentication to todo.ly
    When I send POST request 'api/user.json' with json and BASIC authentication

  """
  {
	"Email": "iver777@gmail.com",
	"FullName": "Iver",
	"Password":"pASswoRd"
}
  """
    Then I expected the response code 200
