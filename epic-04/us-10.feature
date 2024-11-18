Feature: Gestión de inventario

    Scenario: Gestión exitosa del inventario
        Given el usuario ingresa al sistema de inventario
        When el usuario realice un cambio en su inventario
        Then el sistema guarda los cambios
        And muestra el inventario actualizado.

    Scenario: Error en la actualziación del inventario
        Given el usuario intenta actualizar el inventario
        When la información enviada en el formulario sea incompleta
        Then el sistema muestra un mensaje de error
        And no procede la operación.
