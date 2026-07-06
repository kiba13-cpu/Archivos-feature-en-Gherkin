Feature: US15 - Exportar a PDF
  Scenario Outline: Generación de reporte descargable
    Given el usuario requiere compartir su evolución
    When ejecuta el <tap_boton_exportar>
    Then el sistema compila los datos y genera el <reporte_evolucion.pdf>

    Examples:
      | tap_boton_exportar | reporte_evolucion.pdf |
      | TRUE               | "Reporte_Jhomar.pdf"  |