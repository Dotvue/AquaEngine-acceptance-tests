Feature: Generación de facturas

    Scenario: Generación de factura
        Given el usuario realiza un venta
        When el usuario ingresa los datos de la factura en el sistema
        Then el sistema almacena los datos proporcionados para posterior visualización.

    Scenario: Error en la generación de factura
        Given el usuario ingresa datos incompletos o incorrectos
        When el usuario intenta generar la factura
        Then el sistema muestra un mensaje de error indicando los datos inválidos.