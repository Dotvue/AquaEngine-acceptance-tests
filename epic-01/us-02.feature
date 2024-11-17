Feature: Inicio de sesión

    Scenario: Inicio de sesión exitoso
        Given el usuario se encuentra registrado en el sistema
        And se encuentra en la página de inicio de sesión
        When el usuario envía el formulario de inicio de sesión
        Then el usuario es redirigido a su panel de control específico de su sector.

    Scenario: Error en el inicio de sesión por credenciales incorrectas
        Given el usuario ingresa credenciales incorrectas o no registradas
        When el usuario envía el formulario de inicio de sesión
        Then el sistema muestra un mensaje de error indicando credenciales incorrectas.
