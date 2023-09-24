Feature: Inicio de sesión

  Escenario 01: Usuario inicia sesión

    Caso 1:
      Dado que el usuario ha registrado su cuenta previamente,
      Cuando el usuario ingrese su dirección de correo electrónico y contraseña válida,
      Entonces se le permite ingresar a su cuenta y acceder a las funcionalidades.
      Ejemplo:
        | Correo                | Contraseña |
        | usuario1@example.com  | password   |
        | johndoe@example.com   | pass123    |

  Escenario 02: El usuario no inicia sesión por credenciales inválidas

    Caso 1:
      Dado que el usuario ha registrado su cuenta previamente
      Cuando ingrese un correo electrónico y contraseña inválidas
      Entonces no se le permitirá ingresar a la aplicación y se recomendará ingresar credenciales válidas.
      Ejemplo:
        | Correo                | Contraseña |
        | usuario1@example.com  | wrongpass  |
        | johndoe@example.com   |          |
