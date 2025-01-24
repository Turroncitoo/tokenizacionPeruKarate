
@SendOTP @tokenizacion
Feature: Prueba de sendOTP

  @envioMSN
  Scenario Outline: Enviar un mensaje OTP a un numero telefonico del Peru
    Given url 'https://bfa-pe-tkz-qa-01-priv.fif.tech/issuer/igwapi/v2.0/sendOTP'
    * def requestSendOTP = read('classpath:/Data/sendOTP/requestSendOTP.json')
    When request requestSendOTP
    And headers { x-correlation-id: '<correlatioId>', x-issuer-id: '<issuerid>'}
    And method POST
    Then status 200



  Examples:
    |correlatioId|issuerid|
    |8885910237654|FALAB_PE_1|