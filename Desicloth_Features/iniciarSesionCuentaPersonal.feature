Feature: Iniciar sesion con cuenta personal

    Como usuario cliente 
    quiero iniciar sesion desde mi cuenta 
    para gestionar mi perfil y pedidos de forma rapida. 

    Scenario: El usuario cliente ingresa al formulario de inicio de sesion
    Given el usuario se encuentra en el inicio de la aplicacion
    When el usuario presiona el boton Iniciar Sesion 
    And selecciona la opcion de Inicio de Sesion como Cuenta Personal  
    Then el sistema le muestra la pantalla de inicio de sesion para usuarios con cuenta personal

    Scenario Outline: El usuario cliente ingresa datos invalidos 
    Given el usuario se encuentra en el formulario de inicio de sesion para usuarios con cuenta personal
    When el usuario ingresa datos incorrectos en los campos como "<email>" y "<contraseña>"
    And presione el boton Iniciar Sesion  
    Then el sistema no permite que el usuario inicie sesion

    Examples:
        |     Email     |    Contraseña    | 
        |  no-es-email  | noescontrasena13 |
        |  noemail.com  | no               |
        | noemail@#.com | noescontrasena@  |

    Scenario Outline: El usuario cliente ingresa datos validos
    Given el usuario se encuentra en el inicio de la aplicacion
    When el usuario complete los espacios requeridos como "<email>" y "<contraseña>" de forma correcta
    And presione el botón Iniciar Sesion   
    Then el sistema le muestra la pantalla principal logeada desde su cuenta.

    Examples:
        |         Email         |       Contraseña     | 
        |  esemail15@gmail.com  |    es13contrasena@   |
        |  esemail@hotmail.com  |  contrasenaSegura13# |