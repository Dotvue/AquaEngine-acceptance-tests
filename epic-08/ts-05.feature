Feature: Crear Registro de Maquinaria de Pesca

    Scenario: Creación exitosa de un registro de maquinaria de pesca
        Given el endpoint "/api/v1/monitored-machines" está disponible
        When se envía una solicitud POST con valores para equipmentId y cantidad
        Then se recibe una respuesta con estado 201
        And el recurso de Maquinaria de Pesca está incluido en el cuerpo de la respuesta, con un nuevo ID y los valores registrados para equipmentId y cantidad.

    Scenario: Creación duplicada de un registro de maquinaria de pesca
        Given el endpoint "/api/v1/monitored-machines" está disponible
        When se envía una solicitud POST con valores que ya existen para equipmentId
        Then se recibe una respuesta con estado 400
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "No se cumplen todas las restricciones para Maquinaria de Pesca: Ya existe un registro de maquinaria para este ID."