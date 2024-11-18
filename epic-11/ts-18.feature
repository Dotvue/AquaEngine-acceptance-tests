Feature: Actualizar registro de mantenimiento de maquinaria

    Scenario: Actualización exitosa de un registro de maquinaria de pesca
        Dado que el endpoint "/api/v1/maintenances/{id}" está disponible
        Cuando se envía una solicitud PUT con el id y los valores actualizados para machineId y cantidad
        Entonces se recibe una respuesta con estado 200
        Y el recurso de mantenimiento de Pesca actualizado está incluido en el cuerpo de la respuesta con los nuevos valores para machineId

    Scenario: Actualización de un registro de maquinaria de pesca inexistente
        Dado que el endpoint "/api/v1/maintenances/{id}" está disponible
        Cuando se envía una solicitud PUT con un id inválido y valores actualizados
        Entonces se recibe una respuesta con estado 404
        Y se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de maquinaria de pesca no encontrado para actualizar."