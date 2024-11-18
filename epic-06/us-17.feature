Feature: Visualización de precios

    Scenario: Precios  visivles en la página
        Given el usuario está en la landing page
        When accede a la sección de precios
        Then los precios se muestran claramente y sin problemas.