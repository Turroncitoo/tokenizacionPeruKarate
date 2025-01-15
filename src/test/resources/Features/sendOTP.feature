
@SendOTP @tokenizacion
Feature: Prueba de sendOTP

  @envioMSN
  Scenario Outline: Enviar un mensaje OTP a un numero telefonico del Peru
    Given url 'https://bfa-pe-tkz-qa-01-priv.fif.tech/issuer/igwapi/v2.0/sendOTP'
    When request
      """
      {
        "walletProviderId": "<wallet>",
        "issuerCardRefId": "<issuer>",
        "otpValue": "<otpValue>"}
      """
    And headers { x-correlation-id: '<correlatioId>', x-issuer-id: '<issuerid>'}
    And method POST
    Then status 200



  Examples:
    |wallet|issuer|otpValue|correlatioId|issuerid|
    |GOOGLE_PAY|82fa211d99bc4bd43fd34e3d012dcc104e52a4f7c2f08331|12388|8885910237654|FALAB_PE_1|