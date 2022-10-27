Feature: Cliente desea revisar prendas creadas por otros diseñadores 

    Como usuario cliente 
    quiero visualizar prendas personalizadas que crearon los diseñadores 
    para poder comprar esa prenda 

    Scenario:  El cliente quiere ver prendas ya personalizadas 
    Given el cliente esta en la pantalla con el resultado de busquedas de profesionales en diseño 
    When seleccione un perfil de un diseñador 
    Then el sistema le mostrara el perfil del diseñador con los diseños de las prendas publicadas por los usuarios diseñadores