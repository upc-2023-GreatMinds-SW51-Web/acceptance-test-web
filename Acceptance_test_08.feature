Feature: Registro de gastos y ganancias

  Escenario 01: Agricultor registra gastos y ganancias para un ciclo de cultivo

    Caso 1:
      Dado que el agricultor desea llevar un registro financiero detallado,
      Cuando el agricultor ingresa los gastos y las ganancias relacionados con sus actividades,
      Entonces el sistema almacena los registros para su consulta posterior.
      Ejemplo:
        | Tipo       | Descripción           | Monto (USD) |
        | Gasto      | Compra de semillas    | 200         |
        | Ganancia   | Venta de cosecha      | 1000        |

  Escenario 02: Agricultor registra sus ganancias en una lista física pero quiere registrarlo en la aplicación de manera rápida

    Caso 01:
      Dado que el agricultor desea importar su lista que escribió en el cuaderno a los registros de la aplicación
      Cuando se encuentre en la sección “Gestión Financiera”
      Entonces podrá añadir registros de manera rápida y sencilla
      Ejemplo:
        | Tipo       | Descripción           | Monto (USD) |
        | Gasto      | Fertilizante          | 50          |
        | Ganancia   | Venta de animales     | 500         |