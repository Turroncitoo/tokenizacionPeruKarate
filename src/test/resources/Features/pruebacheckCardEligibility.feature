Feature: Prueba de checkCardElegibility

  Scenario: Generar un Token para una tarjeta de crédito
    Given url 'https://bfa-pe-tkz-qa-01-priv.fif.tech/issuer/igwapi/v2.0/checkCardEligibility'
    When request
      """
      {
        "cipheredCardInfo": "<cipher>"
        "walletProviderId": "<wallet>",
        "tokenRequestor":{
        "id": "<id>"
        "originalTokenRequestorId": "<originalToken>"
        "walletId":"<walletId>"
        "merchantId":"<merchan>"
        "name":"<name>"
        }
        "captureMethod":"<manual>"
      """
    And headers { x-correlation-id: '<correlationId>', x-issuer-id: '<issuerId>'}
    And method POST
    Then status 200

  Example:
  |wallet|id|originalToken|walletId|merchan|name|manual|cipher|correlationId|issuerId|
  |walletId1|tokenRequestorid1|originalTokenRequestorId1|walletId1|merchantId1|tokenname1|MANUAL|8885910237654|E2EVTSBKV3|MIAGCSqGSIb3DQEHA6CAMIACAQIxggFXMIIBUwIBAoAMZmFsYWJlbGxhS2lkMDwGCSqGSIb3DQEBBzAvoA8wDQYJYIZIAWUDBAIBBQChHDAaBgkqhkiG9w0BAQgwDQYJYIZIAWUDBAIBBQAEggEAAAztOtB1hfg53etWLU2Y0slheRztj3aS0t5lID2K1e5/oCWDPg0vTPeBl9+PCe/YgVoE9TnhxHTsNr3uoj5jA16KYl1TRLJ4dU++i24nox4apwDy/N6tDFpAKgGjZ9rFcFKMXmbpn/YVDnkxEV8pHICQFFZhthcNCXO0zDHIUIIwUaYMqPMLaQK3uqn2M8XEKSyOUrshqAQUK1RSPiAyF4LGtZXDjPyJhS+z5QdP5/u8BcoIXsANddVg2u4jFk8WpD37K462/K1alsgGjHv9aZblsJlI2yZk+Q7EBkivAjiWbYs9Z4jDbzYvOWzw9Inuo98YIhaxLXZ5xPsyd4elJjCABgkqhkiG9w0BBwEwHQYJYIZIAWUDBAEqBBBKWJW7skC3FleWAgipX17VgEA3kFzH+n0VO6CN5+pRmQqrYcMNHdt8D1L4xIYxwmgMJBjwzYsEvWobZXFk/J+k3tkofaVD8TRH6/KWL8C3wgD8AAAAAAAAAAA=|