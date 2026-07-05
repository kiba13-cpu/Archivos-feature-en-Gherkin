Feature: US02 - Evaluación de ansiedad
  Scenario Outline: Cálculo de nivel de riesgo
    Given el usuario se encuentra en la pantalla de evaluación
    When completa el formulario enviando el arreglo de <respuestas_test>
    Then el algoritmo clasifica al usuario con un <nivel_riesgo> 
    And muestra la <alerta_ui>

    Examples:
      | respuestas_test | nivel_riesgo | alerta_ui                    |
      | [1, 2, 1, 1, 2] | "Leve"       | Modal_Sugerencia_Tips        |
      | [4, 5, 4, 5, 5] | "Severo"     | Modal_Emergencia_SOS         |