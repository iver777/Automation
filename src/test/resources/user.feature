Feature: Users

  Scenario: I want to create a new user

    Given I have authentication to todo.ly
    When I send POST request 'api/user.json' with json and BASIC authentication
  """
    {
	  "Email": "iver737@gmail.com",
	  "FullName": "Iver",
	  "Password":"pASswoRd"
    }
  """
    Then I expected the response code 200
    And I expected the response body is equal
    """
     {
    "Id": EXCLUDE,
    "Email": "iver737@gmail.com",
    "Password": null,
    "FullName": "Iver",
    "TimeZone": 0,
    "IsProUser": false,
    "DefaultProjectId": EXCLUDE,
    "AddItemMoreExpanded": false,
    "EditDueDateMoreExpanded": false,
    "ListSortType": 0,
    "FirstDayOfWeek": 0,
    "NewTaskDueDate": -1,
    "TimeZoneId": "Pacific Standard Time"
}
     """
    And I get the property value 'Id' and save on ID_USER

    And I get the property value 'FullName' and save on UseName

    When I send PUT request 'api/user/ID_USER.json' with json and BASIC authentication
    """
    {
      "FullName": "Eduardo"
    }
     """
    Then I expected the response code 200


    When I send GET request 'api/user.json' with json and BASIC authentication
     """

     """
    Then I expected the response code 200



    When I send DELETE request 'api/user/ID_USER.json' with json and BASIC authentication
    """

    """

    Then I expected the response code 200