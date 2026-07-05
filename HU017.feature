Feature: US33 - Registro Anónimo y Privacidad
  Scenario Outline: Validación de registro anónimo y detección de datos sensibles
    Given que el usuario se encuentra en la pantalla de "Onboarding"
    When introduce el seudónimo <seudonimo_input> y define el PIN numérico <pin_input>
    And confirma haber leído los disclaimers de confidencialidad
    Then el backend procesa la solicitud y retorna el código <codigo_http>
    And la aplicación redirige a la <pantalla_destino> o muestra el <mensaje_sistema>

    Examples:
      | seudonimo_input      | pin_input | codigo_http      | pantalla_destino | mensaje_sistema                                                              |
      | "Estudiante_UPC26"   | "1234"    | 200 OK           | "Dashboard"      | N/A                                                                          |
      | "Anonymous_User"     | "9876"    | 200 OK           | "Dashboard"      | N/A                                                                          |
      | "Nombre Real"        | "4567"    | 400 Bad Request  | "Onboarding"     | "Para proteger tu privacidad sugerimos no usar datos reales. Crea un alias." |