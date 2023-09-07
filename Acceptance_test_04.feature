Feature: Botón Call to Action

    Como usuario deseo ir a la aplicación web desde un solo botón
    
    Scenario Outline: El usuario quiere dirigirse a la aplicación web

        Dado el usuario desea usar la aplicación web
        Cuando esté en la sección donde se encuentre el "<botón call to action>"
        Y le da click derecho al botón
        Entonces será dirigido a la "<aplicación web>"
        
        Example:
            | botón call to action | aplicación web |
            | Registrese ya | Ayni |