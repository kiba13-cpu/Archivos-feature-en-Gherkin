Feature: US40 - Términos legales
  Scenario Outline: Restricción de acceso por políticas de privacidad
    Given el usuario está en el formulario de registro inicial
    When el estado del <checkbox_terminos> cambia
    Then el sistema ajusta el <boton_continuar_habilitado> en la interfaz

    Examples:
      | checkbox_terminos | boton_continuar_habilitado |
      | TRUE (Marcado)    | TRUE (Puede avanzar)       |
      | FALSE (Vacío)     | FALSE (Bloqueado)          |