Feature: US36 - Modo Oscuro
  Scenario Outline: Cambio de tema visual de la aplicación
    Given el usuario se encuentra en la pantalla de Configuración
    When cambia el interruptor de modo oscuro a <toggle_modo_oscuro>
    Then el sistema actualiza el <tema_aplicacion>
    And la paleta de colores se ajusta sin requerir reiniciar la app

    Examples:
      | toggle_modo_oscuro | tema_aplicacion |
      | TRUE               | "Dark_Theme"    |
      | FALSE              | "Light_Theme"   |