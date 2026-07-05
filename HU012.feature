Feature: US12 - Añadir notas íntimas
  Scenario Outline: Registro de texto libre
    Given el usuario ha seleccionado su estado de ánimo
    When escribe en el campo de texto libre la <texto_nota_diaria>
    Then el sistema procesa el texto y retorna <guardado_exitoso>

    Examples:
      | texto_nota_diaria        | guardado_exitoso |
      | "Hoy me fue mal en UPC"  | TRUE             |
      | ""                       | TRUE             |