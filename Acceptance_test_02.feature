Feature: Visualización de caracteristicas de la aplicación web

    Como usuario deseo ver las principales características de la aplicación para decidir si usar el producto en mi trabajo
    
    Scenario Outline: El usuario visita la landing page

        Dado que el usuario necesita una aplicación para aumentar la calidad de sus cultivos
        Cuando el usuario busque en el "<navegador>" ¨Harvest Management¨
        Entonces accede a la "<landing page>" y visualizar las "<funcionalidades>" que le ofrece la aplicacion web
        
        Example:
            | navegador | landing page | funcionalidades |
            | Google Chrome | Ayni | Calendarización |