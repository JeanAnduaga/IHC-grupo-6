Feature: Iniciar sesion con cuenta de empresa

    Como empresa 
    quiero iniciar sesion desde mi cuenta 
    para gestionar mi perfil e interacciones con mis clientes de forma rapida. 

    Scenario: La empresa ingresa al formulario de inicio de sesion
    Given la empresa se encuentra en el inicio de la aplicacion
    When el usuario presiona el boton Iniciar Sesion 
    And selecciona la opcion de Inicio de Sesion como Cuenta de Empresa  
    Then el sistema le muestra la pantalla de inicio de sesion para usuarios con cuenta de empresa

    Scenario Outline:  La empresa ingresa datos invalidos 
    Given la empresa se encuentra en el formulario de inicio de sesion para usuarios con cuenta de empresa
    When el usuario ingresa datos incorrectos en los campos como "<email>" y "<contraseña>"
    And presione el boton Iniciar Sesion  
    Then el sistema no permite que el usuario inicie sesion

    Examples:
        |     Email     |    Contraseña    | 
        |  no-es-email  | noescontrasena13 |
        |  noemail.com  | no               |
        | noemail@#.com | noescontrasena@  |

    Scenario Outline: La empresa ingresa datos validos
    Given la empresa se encuentra en el inicio de la aplicacion
    When el usuario complete los espacios requeridos como "<email>" y "<contraseña>" de forma correcta
    And presione el botón Iniciar Sesion   
    Then el sistema le muestra la pantalla principal logeada desde su cuenta.

    Examples:
        |         Email         |       Contraseña     | 
        |  esemail15@gmail.com  |    es13contrasena@   |
        |  esemail@hotmail.com  |  contrasenaSegura13# |
