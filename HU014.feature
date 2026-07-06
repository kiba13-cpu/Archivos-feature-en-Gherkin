Feature: US14 - Filtrar historial
  Scenario Outline: Aplicación de filtros de fecha
    Given el usuario visualiza su lista de evaluaciones
    When aplica el <filtro_rango_fechas>
    Then la pantalla se actualiza mostrando solo los <resultados_filtrados>

    Examples:
      | filtro_rango_fechas | resultados_filtrados |
      | "Últimos 30 días"   | [Test_Agosto]        |
      | "Últimos 7 días"    | []                   |