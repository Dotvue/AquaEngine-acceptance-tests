Feature: Historial de facturación

    Scenario: Consulta de historial de facturación.
        Given el usuario accede al historial de facturación
        When el usuario aplica filtros
        Then el sistema muestra las facturas correspondientes.

    Scenario: Historial vacío o incompleto
        Given el usuario consulta el historial
        When no hay facturas registradas o el historial está incompleto
        Then el sistema muestra un mensaje indicando que ho nay facturas disponibles.

    Scenario: Problemas en la carga de historial
        Given que el usuario intenta acceder al historial
        When el sistema experimenta problemas de carga
        Then el sistema muestra un mensaje de error.