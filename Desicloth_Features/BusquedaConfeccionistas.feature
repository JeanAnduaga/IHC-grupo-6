Feature: Busqueda de profesional en confeccion de ropa y calzado

    Como usuario cliente 
    quiero buscar a un profesional de confeccion de prendas cerca de mi ubicacion 
    para que confeccione mi diseño en el tipo de prenda que este a mi medida y material que me agrade. 

    Scenario:  El usuario cliente accede al formulario de búsqueda de confeccionista de ropa y calzado
    Given el usuario está en la pantalla principal logeada con su cuenta personal
    When el usuario presione el boton Buscar profesionales
    And seleccione la opción Buscar profesionales en confeccion 
    Then el sistema muestre el formulario de busqueda de profesionales en confeccion de ropa y calzado

    Scenario Outline: El usuario cliente realiza la busqueda de confeccionistas de ropa o calzado
    Given el usuario está en el formulario de busqueda de profesionales en diseño de prendas y calzado
    When el usuario rellene los campos "<Ubicacion>", "<Tipo de prenda>", "<Material>" y el textbox "<Descripcion>" para especificar mas lo que esta buscando
    Then el sistema le muestra una lista de confeccionistas, donde cada uno muestra su nombre, apellido, ubicacion y una imagen de una de sus confecciones que haya realizado con ese tipo de prenda 
    And el sistema muestra que por cada confeccionista aparece un boton Conectar para que el usuario pueda escribir un mensaje a la empresa 

    Examples: 
        |                  Ubicacion                      |   Tipo de prenda    |    Material  |        Descripcion      |
        |  Federico Gallese, 881, San Miguel, Lima, Peru  | Pantalon de vestir  |    Franela   |   Fiesta de Promocion   |
        |     Los Pinos, 490, San Isidro, Lima, Peru      |       Zapato        |     Cuero    |   Invitado en una Boda  |

    Scenario Outline: El usuario cliente contacta con un confeccionista de ropa o calzado 
    Given  el usuario visualiza la lista de confeccionistas en base a la busqueda que realizo previamente 
    When el usuario presione el boton Conectar del confeccionista elegido
    And escriba el "<Mensaje>" sobre de que se trata su pedido 
    And rellene el campo "<Tipo de prenda>", "<Material>" y "<Talla>"
    And presione el boton Enviar solicitud
    Then el sistema notifica a la empresa de la solicitud del pedido del cliente

    Examples:
        |   Talla   |     Tipo de prenda     |    Material  |                                                                                         Mensaje                                                                                   |
        |    28     |    Pantalon de vestir  |    Franela   | Buenas tardes. Necesito que confeccion un pantalon de vestir para una fiesta de promocion, mi presupuesto es S/ 400. Si esta interesado, le envio mi diseno y ubicacion           |
        |    45     |         Zapato         |     Cuero    | Buenos dias. Requiero de su servicio para que me confeccione una zapato a mis medidas para una boda, mi presupuesto es S/ 700. Si esta interesado, le envio mi diseno y ubicacion |