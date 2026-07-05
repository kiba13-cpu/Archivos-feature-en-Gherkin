Feature: US11 - Identificar detonantes
  Scenario Outline: Asociación de etiquetas de contexto
    Given el usuario está guardando su ánimo diario
    When selecciona las <etiquetas_seleccionadas>
    Then el sistema vincula y guarda las <etiquetas_guardadas> al registro

    Examples:
      | etiquetas_seleccionadas | etiquetas_guardadas |
      | ["Exámenes", "Dinero"]  | Insert_Tags_Ex_Di   |
      | []                      | Insert_Null         |