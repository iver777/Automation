Feature: Users

Scenario: I want to create a new user

  Given I have authentication to todo.ly
  When I send POST request 'api/user.json' with json and BASIC authentication

    """
  {
    "Email": "iver@gmail.com",
    "FullName": "iver";
    "Password": pASswoRd
  }
  """

  Then I excepted the response code 200


