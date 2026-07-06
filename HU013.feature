Feature: US13 - Historial de test
  Scenario Outline: Visualización de evaluaciones previas
    Given el usuario accede a la pestaña de historial
    When el sistema envía el <id_usuario_sesion>
    Then la base de datos retorna la <lista_evaluaciones>

    Examples:
      | id_usuario_sesion | lista_evaluaciones |
      | "User_442"        | [Test_1, Test_2]   |
      | "User_999"        | []                 |