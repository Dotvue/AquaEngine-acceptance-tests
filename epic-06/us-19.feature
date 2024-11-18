Feature: Contacto con ventas desde la landing page

    Scenario: Contecto exitoso
        Given el usuario accede a la landing page
        When selecciona la opción de contacto 
        And completa el formulario de contacto
        Then el sistema envía la solicitud correctamente.