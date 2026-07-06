Feature: US38 - Eliminar cuenta
  Scenario Outline: Borrado definitivo de datos personales
    Given el usuario solicita la eliminación permanente de su perfil
    When ingresa correctamente su <confirmacion_pin_seguridad>
    Then la base de datos actualiza el <estado_cuenta> borrando sus registros
    And la sesión se cierra redirigiendo a <pantalla_destino>

    Examples:
      | confirmacion_pin_seguridad | estado_cuenta    | pantalla_destino  |
      | "1234" (PIN Correcto)      | "Deleted_User"   | Screen_Onboarding |
      | "0000" (PIN Incorrecto)    | "Active_User"    | Screen_Perfil     |
