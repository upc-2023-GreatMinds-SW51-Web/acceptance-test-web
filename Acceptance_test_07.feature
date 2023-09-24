Feature: Explorar productos agrícolas

  Escenario 01: Comercializador explora productos disponibles

    Caso 1:
      Dado que el comercializador ha iniciado sesión en la aplicación,
      Cuando el comercializador navegue a la sección de productos agrícolas,
      Entonces se le muestran los productos disponibles para explorar.
      Ejemplo:

  Escenario 02: Comercializador no puede encontrar el producto deseado

    Caso 01:
      Dado que el comerciante desea buscar un producto en específico para comprar
      Cuando busque en la sección de “Buscar productos” el producto deseado y a simple vista no lo encuentre
      Entonces usará la búsqueda por input que está en pantalla
      Ejemplo:
        | Producto a buscar |
        | Semillas de tomate |
        | Fertilizante       |