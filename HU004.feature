Feature: US04 - Contexto universitario
  Scenario Outline: Reconocimiento de carga académica
    Given el motor NLP está inicializado con el dataset estudiantil
    When el usuario envía el <mensaje_academico>
    Then la IA detecta la entidad y retorna la <respuesta_contextual>

    Examples:
      | mensaje_academico           | respuesta_contextual                                           |
      | "Jalé la PC1 de cálculo"    | "Entiendo lo frustrante que es una mala nota en una Práctica." |
      | "La T2 me tiene saturado"   | "Las entregas parciales son duras. Organizar el tiempo ayuda." |