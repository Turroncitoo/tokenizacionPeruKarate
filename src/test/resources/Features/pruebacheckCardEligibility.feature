Feature: Prueba de checkCardElegibility

  Scenario: agregar un token a las tarjetas del banco
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
    And headers { x-correlation-id: '8885910237654', x-issuer-id: 'E2EVTSBKV3'}
    And method POST

    Then status 200

  Example:
  |wallet|id|originalToken|walletId|merchan|name|manual|cipher|
  |walletId1|tokenRequestorid1|originalTokenRequestorId1|walletId1|merchantId1|tokenname1|MANUAL|eyJhbGciOiJQUzI1NiIsImtpZCI6IjgwODE0NTFhZjUxM2E0NzM0YWI4Yjc4ZGMzMTZmZTA1ZDVkOTc2ODA4NTgwMDlhNWFiYmIyNTk4OTE1ZTEzOTUiLCJ0eXAiOiJKT1NFIiwiY3R5IjoiSldFIn0.ZXlKaGJHY2lPaUpTVTBFdFQwRkZVQzB5TlRZaUxDSnJhV1FpT2lJd05qSm1OV013TmpreFpqQTVOVEZsTkRkbVlUSXpNV1k1T1RRNE0yTTJaV0ZtTnpKa09UQTFObUUxTVdNek4yRmhOR0UzTWpka09XTTRNall3TlRKa0lpd2lkSGx3SWpvaVNrOVRSU0lzSW1WdVl5STZJa0V5TlRaSFEwMGlMQ0pwWVhRaU9pSXhOekk0TkRrME5EazRMamMyTXlKOS5EMUpyQlI2TUV0VnZGQmZ4ZkhIdTJmQjFZRk81Z1RTMHVBSHRBS05qRGhlVm9mUzFFVThNTlBMNGhMTjgtcFYtaktZTTVaRnVuUjBVVElfblhVaDFUcGZNMXRuY1BKNm9mMjBlRWRxNUlCMFlCT2lSeXFmcXhYb25raUk2T0l5RnhoZDhLWXdMZUtScm9WWk0yeDVRYmNpTWFfZk1jbzc1NnJUTGVvdGFPV0xHcGs1S1U0TFNaNGFIUGlsazg1V0l3MF9HeTFxOGtBWG9hVk1CYzFTRTNYanNRbUdtQUpzZ1EwdmVLTU1sZDVhaXpvSUlEUU4tMjk0R3V6Rk5PNFgyRXN0R3JRclF5T2FCSUhUcndKTF9MTWlTdHlTQUhwTHJ6TFdrWnNYSUxtLVRrczZyeHdyRDJ4Skp4bGx3TTBZckZWb25UeS1JUzB0d1NrdXNIOGhGUHcuNGRwTWd1dl9BRTNIaExUeS4tZzM1SFlCaHBCQjJjbWFvRUs2Ym9VR3doc2hqVm13Q2c1bkwxOVE3UmlvVG9lcDBYWWNWMWdZa3RpeUdUdmJaVjNqRGN0aUU4QTZvd1ZSR3BYc0tncXpaNTBGNzZ4UHRNbGdnWkVQcUx3cVlxOEpscElPWS1ZR3Q2YzljaTVoMTdlb2EzZ2JxbnZtOElzRWYySG5HZzR0bTVFc1l4aHFCNFk5TmV4dzhvRkl1NnN3U0xONTRjNlpITTViTi1PN1BIN3FIVXdONHBpNTdhaUVXMFUtUE9KNHZpMkJCZEljLTNlc1JJMGV1cGZnTUlxQUJGbHpxNDJRb3R1bTYyVUJNZkpXTDZGOFlacUl6M2RTa1NBanloSHI3WFhpMzBMS3c1N1RrOTlJUWQxUXJjR1piNHUtZC5PalowRGkybTlPX3Q1Z3dfalJNZ1pn.JNCJzR2dmW-TaJiK_FO2Hg2OWLHHmBAP8fmOMEqHYUfUGSPNJfeHIFjBBTxfzrcJS2QyLfb3LWFNvjwikdBbQwgoLHK1oPpkUX7Ejwx8OZ5gH-kessdAjFryFblxd9UPfKHyubmGM9SFh-0XCiAi21mqc_8iAVEFlojrS-zbDLcD5UnEtFSAP_DP7zRDTIoDP_WNPjVDqUOf1JPwoDSfwvtjLv7fXmzaW1duq8Sry7H9YDJyrV8PibbQCRCx1qdgp8FJRrYE7H5yg8pSIeRyMabNFJgTYe4zmLd0wqE1-g-EPhyKRmFbz_-iHMEJfW_ghZwoacZtpPzkhIhYhMP67A|