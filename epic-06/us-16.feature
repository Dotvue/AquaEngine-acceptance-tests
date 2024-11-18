Feature: Navegación por la Landing Page

    Scenario: Navegación exitosa
        Given el usuario accede a la landing page
        When navega por las diferentes secciones
        Then la página muestra elementos clave como los precios y el contacto.