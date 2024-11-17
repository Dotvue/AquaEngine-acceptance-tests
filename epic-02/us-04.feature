Feature: Registro de equipos

    Scenario: Creación exitosa de un nuevo equipo
        Given el usuario está en la sección de estado de equipos
        When selecciona "nuevo equipo"
        Then el sistema permite al usuario añadir un nuevo equipo.