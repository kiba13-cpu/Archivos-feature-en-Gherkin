Feature: US09 - Registrar ánimo diario
  Scenario Outline: Guardado del estado emocional
    Given el usuario visualiza el componente de emociones en el dashboard
    When selecciona el icono <emocion_id>
    Then la base de datos registra el estado
    And muestra el componente <mensaje_exito>

    Examples:
      | emocion_id   | mensaje_exito               |
      | "feliz_ico"  | "¡Qué bueno que estés bien!"|
      | "triste_ico" | "Registrado. Un abrazo."    |