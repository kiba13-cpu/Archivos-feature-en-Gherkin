Feature: US03 - Lenguaje empático
  Scenario Outline: Filtro de diagnósticos médicos
    Given el usuario escribe un <mensaje_angustia> en el chat
    When el motor de NLP genera la respuesta
    Then valida que <contiene_diagnostico> sea FALSE
    And muestra la <respuesta_empatica>

    Examples:
      | mensaje_angustia             | contiene_diagnostico | respuesta_empatica                                         |
      | "Creo que tengo depresión"   | FALSE                | "Siento que te sientas así. Conf-iA no diagnostica, pero..." |
      | "Me duele el pecho de miedo" | FALSE                | "El miedo físico es muy real. Respiremos juntos..."        |