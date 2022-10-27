Feature: Busqueda de profesional en diseño de ropa y calzado 

    Como usuario cliente 
    quiero buscar profesionales en diseño de ropa y calzado 
    para que diseñe una prenda o calzado a mi gusto. 

    Scenario: El usuario cliente accede al formulario de busqueda de diseñadores de ropa y calzado
    Given el usuario esta en la pantalla principal logeada con su cuenta personal
    When el usuario presione el boton Buscar profesionales
    And seleccione la opción Buscar profesionales en diseño 
    Then el sistema muestre el formulario de busqueda de profesionales en diseño de ropa y calzado

    Scenario Outline: El usuario cliente realiza la busqueda de diseñadores de ropa o calzado
    Given el usuario está en el formulario de busqueda de profesionales en diseño de prendas y calzado
    When el usuario rellene los campos "<Estilo de diseño>",  "<Tipo de prenda>" y el textbox "<Descripcion>" para especificar mas lo que esta buscando
    Then el sistema le muestra una lista de diseñadores, donde cada uno muestra su nombre, apellido y un diseño que haya realizado con ese tipo de prenda y estilo de diseño 
    And el sistema muestra que por cada diseñador aparece un botón Conectar para que el usuario pueda escribir un mensaje a la empresa

    Examples:
        |       Estilo de diseño      |  Tipo de prenda  |       Descripcion     |
        |     Diseño e Ilustracion    |      Camiseta    |    Reunion Familiar   |
        |  Pintura y tecnicas mixtas  |       Blusa      |        Halloween      |
        |            Dibujo           |     Zapatilla    |  Graduacion Medicina  |
        |         Arte Digital        |        Bota      |      Cumpleanos 22    |

    Scenario Outline: El usuario cliente contacta con un diseñador de ropa o calzado
    Given el usuario visualiza la lista de diseñadores en base a la busqueda que realizo previamente 
    When el usuario presione el botón “Conectar” del diseñador que más le agrado su diseño
    And escriba el "<Mensaje>" sobre de que se trata su pedido 
    And rellene el campo "<Tipo de prenda>" y "<Estilo de diseño>"
    And presione el boton Enviar solicitud
    Then el sistema notifica a la empresa de la solicitud del pedido del cliente

    Examples:
        |       Estilo de diseño      |  Tipo de prenda  |                                                       Mensaje                                                           |
        |     Diseño e Ilustracion    |      Camiseta    | Hola! Requiero el diseno de una camiseta de un tema en tendencia en halloween para el 30/10/22 mi presupuesto es S/. 40 |
        |        Arte Digital         |     Zapatilla    | Buenos dias. Necesito un diseno abstracto de una zapatilla para el 02/11/22, le puedo pagar S/.30                       |