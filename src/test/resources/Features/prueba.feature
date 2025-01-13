Feature: Encriptando informacion

  Scenario: Encripto el nombre de un colega
    Given url 'http://127.0.0.1:8080/encryption/encrypt'
    And request {"plainText": "raafita"}
    When method POST
    Then status 200