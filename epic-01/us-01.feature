Feature: Registro de un nuevo usuario

    Scenario: Registro exitoso del usuario
        Given el usuario ingresa la información requerida
        And cuenta con un correo no registrado en el sistema
        When el usuarioenvía el formulario de registro
        Then el usuario recibe una confirmación de registro
        And puede iniciar sesión.

    Scenario: Registro fallido por un usuario y existente
        Given el usuario intenta registrar un email que ya está en uso
        When el usuario envía el formulario de registro
        Then el sistema muestra un mensaje indicando que el email ya está registrado
        And solicita usar uno diferente.
        