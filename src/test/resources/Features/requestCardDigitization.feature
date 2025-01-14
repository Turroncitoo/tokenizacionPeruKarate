
Feature: Prueba de requestCardDigitization

  Scenario: Pruebas semaforo
    Given url 'https://bfa-pe-tkz-qa-01-priv.fif.tech/issuer/igwapi/v2.0/requestCardDigitization'
    When request
      """
      {
        "walletProviderId": "<wallet>",
        "issuerCardRefId": "<issuer>",
        "walletUserInformation": {
            "walletUserId": "<one>"}
        }
      """
    And headers { x-correlation-id: '8885910237633', x-issuer-id: '123'}
    And method POST

    Then status 200

  Example:
  |wallet|issuer|one|correlatioId|issuerid|
  |Bank Pay|82fa211d99bc4bd43fd34e3d012dcc104e52a4f7c2f08331|1|8885910237633|123|