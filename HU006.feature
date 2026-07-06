Feature: US06 - Alertas preventivas
  Scenario Outline: Detección de crisis inminente
    Given la IA analiza en tiempo real las respuestas del usuario
    When detecta el <texto_riesgo_detectado>
    Then detiene la conversación normal
    And lanza el trigger <notificacion_emergencia> redirigiendo a <pantalla>

    Examples:
      | texto_riesgo_detectado    | notificacion_emergencia | pantalla   |
      | "Ya no quiero estar aquí" | TRUE                    | Screen_SOS |
      | "Me voy a hacer daño"     | TRUE                    | Screen_SOS |
      | "Estoy un poco triste"    | FALSE                   | Chat_UI    |