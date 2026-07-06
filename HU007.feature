Feature: US07 - Pausar evaluación
  Scenario Outline: Guardado temporal del test
    Given el usuario está en la pregunta número <numero_pregunta>
    When ejecuta el evento <btn_salir_tap>
    Then el sistema guarda el <estado_temporal_test>
    And permite reanudar desde la misma pregunta posteriormente

    Examples:
      | numero_pregunta | btn_salir_tap | estado_temporal_test |
      | 5               | TRUE          | "Pregunta_5_Saved"   |
      | 2               | TRUE          | "Pregunta_2_Saved"   |