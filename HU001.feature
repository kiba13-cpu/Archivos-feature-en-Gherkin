Feature: US01 - Soporte nocturno 24/7
  Scenario Outline: Interacción con el chatbot en horario crítico
    Given el usuario abre la ventana de chat y el <hora_sistema> está en rango nocturno
    When el usuario envía el <mensaje_usuario>
    Then el backend procesa el texto en el motor NLP
    And retorna el <codigo_estado> mostrando la <respuesta_bot>

    Examples:
      | hora_sistema | mensaje_usuario          | codigo_estado | respuesta_bot                                 |
      | 02:15 AM     | "No puedo dormir"        | 200 OK        | "Entiendo tu frustración. ¿Quieres hablar?"   |
      | 04:30 AM     | "Tengo mucha ansiedad"   | 200 OK        | "Estoy aquí para ti. Hagamos un ejercicio."   |