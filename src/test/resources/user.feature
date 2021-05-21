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



And I excepted the response body is  equal
"""
    {
  "Id": EXCLUDE,
  "Email": "iver777@gmail.com",
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


