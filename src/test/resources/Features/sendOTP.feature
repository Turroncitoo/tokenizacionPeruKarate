
Feature: Prueba de sendOTP

  Scenario: Enviar un mensaje OTP a un numero telefonico del Peru
    Given url 'https://bfa-pe-tkz-qa-01-priv.fif.tech/issuer/igwapi/v2.0/sendOTP'
    When request
      """
      {
        "walletProviderId": "<wallet>",
        "issuerCardRefId": "<issuer>",
        "otpValue": "<otpValue>"}
      """
    And headers { x-correlation-id: '8885910237667', x-issuer-id: '123'}
    And method POST

    Then status 200
    # And match response contains { "plainText": "marquito2.0" }

  Example:
    |wallet|issuer|otpValue|correlatioId|issuerid|
    |GOOGLE_PAY|01fab1f3691820d1ba6facbf877f971d2c90ba1e86810397|55555|8885910237667|123|