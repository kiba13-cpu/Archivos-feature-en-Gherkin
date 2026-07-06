Feature: US05 - Informe inmediato
  Scenario Outline: Despliegue de resultados del prediagnóstico
    Given el usuario ha completado el test
    When el backend recibe el <id_evaluacion>
    Then renderiza la <tarjeta_resumen> con el <mensaje_estado>

    Examples:
      | id_evaluacion | tarjeta_resumen  | mensaje_estado                             |
      | "EVAL_901"    | Card_Verde       | "Tu nivel de estrés es manejable hoy."     |
      | "EVAL_902"    | Card_Roja        | "Hemos detectado picos de ansiedad altos." |