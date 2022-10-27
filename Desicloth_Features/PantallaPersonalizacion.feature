Feature: Ingresar a la interfaz de personalización de prendas 

    Como usuario cliente 
    quiero poder personalizar mi prenda escogida 
    para diseñar esa prenda a mi gusto. 

    Scenario: El usuario cliente accede a la personalizacion de prendas
    Given el usuario esta en el menu de inicio
    When el usuario hace click en el boton Personalizar
    And seleccione el tipo de prenda que quiera personalizar
    Then el sistema le muestra la interfaz para poder personalizar su prenda
