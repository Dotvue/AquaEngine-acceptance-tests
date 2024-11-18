Feature: Seguimiento de solicitudes de equipos

    Scenario: Seguimiento exitodo de la solicitud
        Given el usuario ha realizado un solicited de compra o alquiler
        When accede a la sección "Mis Solicitudes"
        Then el sistema muestra el estado actual de cada solicitud.

    Scenario: Seguimiento fallido por falta de pedidos
        Given el usuario consulta el estado de una solicitud
        When no haya pedidos por el momento
        Then el sistema muestra un mensaje indicando la incapacidad de obtener el estado de la solicitud.
    