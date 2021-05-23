Feature: Project

  Scenario: I want to create a new project
    #crear proyecto
    Given I have authentication to todo.ly
    When I send POST request 'api/projects.json' with json and BASIC authentication
  """
   {

    "Content": " New Project",
    "Icon": "5"

}
  """
    Then I expected the response code 200


    And I get the property value 'Id' and save on ID_PROJECT

    And I get the property value 'Content' and save on Content


    #actualizar nombre de proyecto

    When I send PUT request 'api/projects/ID_PROJECT.json' with json and BASIC authentication
    """
    {
      "Content": "Nuevo"
    }
     """
    Then I expected the response code 200

    #obtener todos los projectos

    When I send GET request 'api/projects.json' with json and BASIC authentication
     """

     """
    Then I expected the response code 200

    #Eliminar proyecto por id

    When I send DELETE request 'api/projects/ID_PROJECT.json' with json and BASIC authentication
    """

    """

    Then I expected the response code 200

