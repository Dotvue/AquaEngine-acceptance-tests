Feature: Historial de mantenimiento

    Scenario: Consulta de historial de mantenimiento
        Given el usuario selecciona un equipo
        When el usuario haga click sobre el botón para consultar el historial
        Then el sistema muestra el historial de mantenimiento.

    Scenario: Historial Vacío o no disponible
        Given el usuario consulta el historial de un equipo registrado
        When el usuario seleccione ver más información
        Then el sistema muestra un mensaje indicando que no hay historial disponible para ese equipo. 