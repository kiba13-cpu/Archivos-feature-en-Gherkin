Feature: US08 - Calificar respuesta
  Scenario Outline: Feedback del usuario al modelo NLP
    Given que el bot ha emitido el mensaje <id_mensaje>
    When el usuario selecciona la calificacion <calificacion_positiva>
    Then la base de datos inserta el <feedback_modelo>

    Examples:
      | id_mensaje | calificacion_positiva | feedback_modelo |
      | "MSG_010"  | TRUE (Pulgar arriba)  | Insert_Score_1  |
      | "MSG_011"  | FALSE (Pulgar abajo)  | Insert_Score_0  |