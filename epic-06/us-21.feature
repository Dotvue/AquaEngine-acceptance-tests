Feature: Acceso a la aplicación web

    Scenario: acceso directo a la aplicación web
        Given el usuario se encuentra en la vista principla de la landing page
        When el usuario siga las indicaciones para ingresar a la aplicación web
        Then el sistema lo redirige a la aplicación web.