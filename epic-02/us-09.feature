Feature: Notificaciones de estado

    Scenario: Recepción de notificaciones
        Given el estado de un equipo cambia a crítico
        When el sistema detecta el cambio
        Then el usuario recibe una notificación por dentro de la aplicación.

    Scenario: Falta de notificación por cambio crítico
        Given el estado de un equipo cambia a crítico
        When el usuario no recibe una notificación
        Then el sistema muestra un mensaje indicando un fallo en su funcionamiento.