Feature: Landing Page responsive

    Como usuario deseo visitar la landing page desde cualquier dispositivo
    
    Scenario Outline: El usuario visita la landing page desde su celular

        Dado que el usuario necesita visitar la landing page desde un "<dispositivo remoto>"
        Cuando visite la landing page desde el "<navegador>" de su celular
        Entonces la "<landing page>" con su diseño responsive puede visualizarse adecuadamente en el navegador del dispositivo móvil
        
        Example:
            | dispositivo remoto | navegador | landing page |
            | Galaxy S20 | Opera | Ayni |

    Scenario Outline: El usuario visita la landing page desde su computadora o computadora portatil

        Dado que el usuario necesita visitar la landing page desde un "<dispositivo de escritorio>"
        Cuando visite la landing page desde el "<navegador>" de su computador
        Entonces la landing page con su diseño responsive puede visualizarse adecuadamente en el navegador del dispositivo adecuandose a la resolución del dispositivo
        
        Example:
            | dispositivo de escritorio | navegador | landing page |
            | Laptop | Opera | Ayni |