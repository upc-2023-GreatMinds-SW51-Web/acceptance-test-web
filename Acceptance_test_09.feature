Feature: Sección principal "Home"

  Escenario: Redireccionamiento a pantalla "Home"

    Dado que el usuario se encuentra fuera de la aplicación web
    Cuando inicie sesión de manera correcta
    Entonces se le redirecciona a la pantalla de "Home"
    Ejemplo:
      | Rol       |
      | Productor |
      | Comerciante |

  Escenario: Fallo en la redirección a "Home"

    Dado que el usuario se encuentra fuera de la aplicación
    Cuando inicie sesión con credenciales inválidas
    Entonces no le permitirá el redireccionamiento a "Home"
    Ejemplo:
      | Usuario   | Contraseña   |
      | user123   | contraseña1 |
      | johndoe   | pass123      |