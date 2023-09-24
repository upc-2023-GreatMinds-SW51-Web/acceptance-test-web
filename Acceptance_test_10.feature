Feature: Registro de cuenta

  Escenario 01: Usuario registra su cuenta

    Caso 1:
      Dado que el usuario se encuentra en la sección de registro
      Cuando el usuario ingrese sus datos para el registro y escoja el rol que desee
      Entonces su cuenta es registrada en la aplicación.
      Ejemplo:
        | Nombre    | Apellido  | Correo                | Contraseña | Rol         |
        | Juan      | Pérez     | juanperez@example.com | password   | Productor   |
        | María     | López     | marialopez@example.com| pass123    | Comerciante |

  Escenario 02: El usuario registra su cuenta con un correo inválido

    Caso 1:
      Dado que el usuario se encuentra en la sección de registro
      Cuando el usuario ingrese los datos requeridos pero con un correo inválido
      Entonces se le pide ingresar un correo válido además de mostrar los campos de color rojo representando el error
      Ejemplo:
        | Nombre    | Apellido  | Correo                  | Contraseña | Rol       |
        | José      | Martínez | josemartinez@.com        | password   | Productor |
        | Ana       | Gómez    | anagomez@invalidemail    | pass123    | Comerciante |
