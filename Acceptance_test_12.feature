Feature: Acceder a Calificaciones y Reseñas

  Como comercializador
  Quiero acceder a las calificaciones y reseñas dejadas por los agricultores
  Para saber sobre la valoración de mis servicios

  Scenario: Comercializador accede a las calificaciones y reseñas
    Given que el comercializador desea evaluar la satisfacción de los agricultores con sus productos
    When el comercializador accede a la sección de calificaciones y reseñas
    Then puede ver las evaluaciones y comentarios proporcionados por los agricultores.

  Scenario: Comerciante realiza una calificación negativa al productor
    Given que el comerciante hizo un pedido y la calidad del producto no es la que esperaba
    And se encuentra en la sección “Calificaciones”
    When registra su calificación negativa con 1 estrella
    Then la calificación negativa se registra correctamente.

    Examples:
      | Calificación Esperada |
      | 1 estrella             |
