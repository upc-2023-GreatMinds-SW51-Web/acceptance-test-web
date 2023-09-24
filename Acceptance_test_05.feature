Feature: Planificación de actividades agrícolas

  Escenario 01: Agricultor planifica actividades para un ciclo de cultivo

    Caso 1:
      Dado que el agricultor ha ingresado a la sección de planificación,
      Cuando el agricultor ingresa los datos relevantes para las actividades agrícolas,
      Entonces el sistema registra el plan y lo refleja en el calendario.

  Escenario 02: Agricultor añade actividades a su calendario como parte de la planificación

    Caso 01:
      Dado que el agricultor empieza un nuevo plan de cultivo
      Cuando esté creando el plan y se encuentre en la página de añadir tareas al calendario
      Entonces puede añadir o eliminar tareas para determinados días de su calendario
      Ejemplos:
        | Actividad       | Día         |
        | Sembrar maíz   | 2023-10-01  |
        | Fertilizar     | 2023-10-03  |