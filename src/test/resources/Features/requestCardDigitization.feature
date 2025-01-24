@requestCardDigitization @tokenizacion
Feature: Prueba de requestCardDigitization

  Background:
    * def requesCardDigitalization = read('classpath:/Data/requesCardDigitalization/requescard.json')
  @pruebaSemaforo
  Scenario Outline: Pruebas semáforo para requestCardDigitization
    Given url urlToken
    When request
    And headers { "x-correlation-id": "<correlatioId>", "x-issuer-id": "<issuerid>" }
    And method POST
    Then status 200

    Examples:
      | wallet    | issuer                                           | one   | correlatioId  | issuerid |
      | Bank Pay  | 82fa211d99bc4bd43fd34e3d012dcc104e52a4f7c2f08331 | 55555 | 8885910237654 | 123      |
