Feature: Estado de equipos

    Scenario: Visualización del estado de equipos
        Given el usuario accede a la sección de monitoreo de equipos
        When el usuario consulta el listado de equipos asignado a su cuenta
        Then se muestra una relación de los equipos y sus estados.