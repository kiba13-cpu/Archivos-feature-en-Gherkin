Feature: US10 - Gráfico semanal
  Scenario Outline: Renderizado de histórico
    Given el usuario ingresa al Dashboard principal
    When el sistema consulta los datos del rango <ultimos_7_dias>
    Then si hay <cantidad_registros>, renderiza el <grafico_resultado>

    Examples:
      | ultimos_7_dias | cantidad_registros | grafico_resultado      |
      | Lunes-Dom      | 5                  | Grafico_Barras_Lleno   |
      | Lunes-Dom      | 0                  | Mensaje_"Sin_Datos"    |