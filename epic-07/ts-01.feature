Feature: Crear Registro de inventario

    Scenario: Creación exitosa de un regustro de inventario
        Given el endpoint "/api/v1/products" está disponible
        When se envía una solicitud POST con valores para productId y cantidad
        Then se recibe una respuesta con estado 201
        And el recurso de inventario está incluido en el cuerpo de la respuesta.

    Scenario: Creación duplicada de un registro de inventario
        Given el endpoint "/api/v1/products" está disponible
        When se envía una solicitud POST con valores que ya existen para productId
        Then se recive una respuesta con estado 400
        And se incluye un mensaje en el cuerpo de respuesta, con el valor "Ya existe un registro de inventario para este producto."