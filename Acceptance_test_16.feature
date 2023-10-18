Feature: Sistemas de búsqueda y paginación

  Como usuario del segmento de agricultores, deseo encontrar los productos de manera rápida para no perder tiempo.

  Scenario: El usuario quiere encontrar un producto que compró hace unas semanas

    Given que el usuario desea ver una compra que hizo hace semanas
    When quiera buscarlo en la sección de “Mis compras”
    Then podrá buscarlo directamente en una barra de búsqueda.

    Examples:
      | Producto       | Fecha de Compra |
      | Tomates        | 2023-09-15      |
      | Maíz           | 2023-09-20      |

  Scenario: El usuario no encuentra el producto que compró hace semanas

    Given que el usuario no puede encontrar el producto que pidió hace unas semanas
    When use la paginación mediante botones de la aplicación
    Then encuentra el producto que estaba buscando pero en la última página de los productos.

    Examples:
      | Producto       | Fecha de Compra |
      | Lechugas       | 2023-09-10      |
      | Papas          | 2023-09-25      |

