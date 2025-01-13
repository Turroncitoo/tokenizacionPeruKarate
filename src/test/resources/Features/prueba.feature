Feature: Prueba del servicio checkCardElegibility

  Scenario: Api check card elegibility
    Given url 'http://127.0.0.1:8080/encryption/encrypt'
    And request
    """
      {
        "cipheredCardInfo": "308006092a864886f70d010703a08030800201023182015730820153020102800c66616c6162656c6c614b6964303c06092a864886f70d010107302fa00f300d06096086480165030402010500a11c301a06092a864886f70d010108300d0609608648016503040201050004820100bbf0dda514138a6a10f80b97fb59a27dc1e17bf78decc5ba39e327f82c590f0ecf5f0df25c99fc4ea614b1c5dc08010875ac659b0e98a4b4b88a363b45192d222ef4e403fb16eaa6c5d77f748138b87faef8319657463466b444927354d02be78ff668b4a5d43fd865ae1706bf9f791d4c15f2edb2bd3b45bf80a69efb99f0a75342f984827473c490b9ceaf4bea5aec0b859ea143ca9b92bfefecc07ba430849eb1bc0ed4c09fe2695346b39d4416a0767ad85d6ae3976236b37e4a9b05c83d6459faec559b3fa7f4b613728173dbf3ae281b6d9e58a10f75627d0df430886853c67d39af08a09e93b285375afd516d1e6cc15dacac80afaf4615b4172e5969308006092a864886f70d010701301d060960864801650304012a0410aa61b9f5dd06dcce126e972b6adcc66e8040778e8a07758ca984383361e9ce62d9bf65f2cb704af01519cdbaa9bf1851ffdc4280a51437146358ae152d1e723493e6633f89c44f8ee73623ddf5bb3ef743e30000000000000000",
        "publicKeyIdentifier":"",
        "walletProviderId": "APPLE_PAY",
        "tokenRequestor": {
          "id": "tokenRequestorid2",
          "originalTokenRequestorId": "originalTokenRequestorId2",
          "walletId": "walletId2",
          "merchantId": "merchantId2",
          "name": "tokenname2"
        },
        "captureMethod": "CAMERA"
      }
    """
    When method POST
    Then status 200