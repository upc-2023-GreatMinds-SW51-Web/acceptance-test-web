Feature: Atender pedidos

  Como agricultor, deseo ver los pedidos que tengo de manera rápida y fácil en una pantalla.

  Scenario: El usuario agricultor quiere atender un pedido que le interesó

    Given que el agricultor necesita vender sus productos
    When reciba un pedido dentro de la aplicación
    Then podrá atenderlo accediendo a sus productos y seleccionando uno de ellos para ver aceptar o rechazar el pedido.

    Examples:
      | Producto           | Cantidad | Cliente     |
      | Tomates            | 10 kg    | Juan Pérez  |
      | Maíz               | 5 sacos  | María López |

  Scenario: El agricultor quiere rechazar un pedido

    Given que el agricultor desea rechazar un pedido porque no tiene el producto requerido
    When se encuentre en la sección “Mis pedidos” y presione el botón “Rechazar”
    Then el pedido se eliminará.

    Examples:
      | Producto           | Cantidad | Cliente     |
      | Lechugas           | 20 unidades | Carlos Martínez |
      | Papas              | 15 kg    | Laura Gómez     |

