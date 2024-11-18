Feature: Consulta de reseñas de clientes

    Scenario: Visualización exitosa de reseñas
        Given el usuario accede a la landing page
        When accede a la sección de reseñas
        Then visualiza las reseñas de otros clientes sin problemas.
        