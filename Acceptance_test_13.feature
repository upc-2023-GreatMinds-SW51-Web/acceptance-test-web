Feature: Seguimiento de Pedidos y Entregas

  Como comercializador,
  Quiero poder observar el estado de los pedidos y entregas
  Para poder sentirme más tranquilo.

  Scenario: Comercializador sigue el estado de un pedido en curso

    Given que el comercializador ha realizado un pedido y desea rastrear su estado,
    When el comercializador accede a la sección de seguimiento de pedidos,
    Then se le proporciona información actualizada sobre el estado del pedido.

    Examples:
      | Número de Pedido | Estado Actual          |
      | 12345            | En proceso de entrega |
      | 12346            | Listo para enviar     |

  Scenario: Comerciante observa que su pedido se quedó retenido en un paso

    Given que el comerciante realiza un pedido
    When acceda a la página de seguimiento de productos
    Then comprueba que su pedido está retenido en un paso.

    Examples:
      | Número de Pedido | Paso Retenido                |
      | 54321            | Verificación de Inventario   |
      | 54322            | Proceso de Empaque          |
