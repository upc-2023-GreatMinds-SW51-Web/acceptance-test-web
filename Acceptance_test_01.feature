Feature: Visualización de botones y texto amplia y notoria

    Como usuario deseo varios botones y la información de las secciones o pantalla para una mejor navegacion
    
    Scenario Outline: El usuario quiere navegar por la aplicación sin forzar la vista

        Dado que el usuario desea ver los productos visualmente grandes
        Cuando quiera analizar mejor un producto o imagen
        Y le de click izquierdo a la "<imagen>" 
        Entonces la imagen cambiara de "<resolución>" haciendose mas grande para una mejor visualización
        
        Example:
            | imagen | resolución |
            | papa.png | 640x360 |
            | zanahoria.png | 1280x720 |