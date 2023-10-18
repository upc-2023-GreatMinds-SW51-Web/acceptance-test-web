Feature: Botón Call to Action

  Como visitante, deseo ir a la aplicación web desde un solo botón desde la landing page.

  Scenario: El visitante quiere dirigirse a la aplicación web

    Given que el visitante desea usar la aplicación web
    When esté en la sección donde se encuentre el botón call to action y lo use
    Then será dirigido a la aplicación web.

  Scenario: El visitante desea usar la aplicación lo más rápido posible luego de ver lo que se ofrecía en la landing page

    Given que el visitante quedó satisfecho con la información brindada en la landing page
    When desee empezar a usar la aplicación
    Then puede acceder a ella de forma rápida mediante el botón call to action.
