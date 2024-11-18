Feature: Crear Registro de un usuario

    Scenario: Creación exitosa de un registro de usuario
        Given el endpoint "/api/v1/user" está disponible
        When se envía una solicitud POST con valores para userId, username y role
        Then se recibe una respuesta con estado 201
        AndY el recurso de Usuario está incluido en el cuerpo de la respuesta, con un nuevo ID y los valores registrados para userId, username y role.

    Scenario: Creación duplicada de un registro de usuario
        Given el endpoint "/api/v1/user" está disponible
        When se envía una solicitud POST con valores que ya existen para userId
        Then se recibe una respuesta con estado 400
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "No se cumplen todas las restricciones para el usuario: Ya existe un registro de usuario para este ID."