Feature: Crear registro de mantenimiento de maquinaria

    Scenario: Creación exitosa de un registro de maquinaria de pesca
        Given el endpoint "/api/v1/maintenances" está disponible
        When se envía una solicitud POST con valores para machineId
        Then se recibe una respuesta con estado 201
        And el recurso de mantenimiento de Pesca está incluido en el cuerpo de la respuesta, con un nuevo ID y los valores registrados para machineId y el mantenimiento.

    Scenario: Creación duplicada de un registro de maquinaria de pesca
        Given el endpoint "/api/v1/maintenances" está disponible
        When se envía una solicitud POST con valores que ya existen para para un machineId especifico
        Then se recibe una respuesta con estado 400
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "No se cumplen todas las restricciones para Maquinaria de Pesca: Ya existe un mantenimiento con este ID."