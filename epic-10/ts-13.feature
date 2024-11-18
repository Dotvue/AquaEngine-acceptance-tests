Feature: Crear Registro de Facturación

    Scenario: Creación exitosa de un registro de facturación
        Given el endpoint "/api/v1/invoices" está disponible
        When se envía una solicitud POST con valores para invoiceId
        Then se recibe una respuesta con estado 201
        And el recurso de Facturación está incluido en el cuerpo de la respuesta, con un nuevo ID y los valores registrados para invoicesId y invoicesDetails.

    Scenario: Creación duplicada de un registro de facturación
        Given el endpoint "/api/v1/invoices" está disponible
        When se envía una solicitud POST con valores que ya existen para invoicesId
        Then se recibe una respuesta con estado 400
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "No se cumplen todas las restricciones para Facturación: Ya existe un registro de facturación para este ID."