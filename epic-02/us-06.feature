Feature: Alerta de equipos críticos

    Scenario: Configuración de alertas
        Given el usuario active las notificaciones de un dispositivo
        When el equipo se encuentre en un estado diferente a funcional
        Then el sistema muestra una notifiación sobre el error.