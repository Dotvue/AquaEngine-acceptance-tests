Feature: Actualizar registro de facturación

    Scenario: Actualización exitosa de un registro de facturación
        Given el endpoint "/api/v1/invoices/{id}" está disponible
        When se envía una solicitud PUT con el id y valores actualizados para invoicesId y invoicesDetails
        Then se recibe una respuesta con estado 200
        AndY el recurso de Facturación actualizado está incluido en el cuerpo de la respuesta con los nuevos valores para invoicesId y invoicesDetails.

    Scenario: Actualización de un registro de facturación inexistente
        Given el endpoint "/api/v1/invoices/{id}" está disponible
        When se envía una solicitud PUT con un id inválido y valores actualizados
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de facturación no encontrado para actualizar."