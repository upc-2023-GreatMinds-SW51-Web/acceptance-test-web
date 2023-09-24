Feature: Realizar pedidos de productos agrícolas

  Escenario 01: Comercializador realiza un pedido de productos

    Caso 1:
      Dado que el comercializador ha explorado los productos y ha seleccionado los que desea pedir,
      Cuando el comercializador confirma el pedido y especifica las cantidades,
      Entonces se registra el pedido y se notifica al comercializador sobre el proceso de entrega.
      Ejemplo:
        | Producto           | Cantidad |
        | Semillas de maíz   | 100      |
        | Fertilizante       | 50       |

  Escenario 02: Comerciante realiza un pedido con información dudosa o errónea

    Caso 01:
      Dado que el comercializador ha seleccionado el producto que desea pedir
      Cuando ingrese los datos correspondientes para que el pedido sea exitoso y sean inválidos
      Entonces la compra no se ejecutará
      Ejemplo:
        | Producto           | Cantidad |
        | Semillas de trigo  | -10      |
        | Herbicida          | abc      |