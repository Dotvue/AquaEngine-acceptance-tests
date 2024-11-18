Feature: Consulta de produyctos en inventario

    Scenario: Consulta exitosa del inventario
        Given el usuario accede al sistema de inventario
        When el usuario selecciona la categoría de productos previamente fabricados
        Then se muestras todos los productos disponibles correspondientes a la busqueda.

    Scenario: Error en la consulta del inventario
        Given el usuario accede al sistema de inventario
        When el usuario ingrese información no existente en la búsqueda
        Then el sistema muestra un mensaje de error e indica que no hay coincidencias.