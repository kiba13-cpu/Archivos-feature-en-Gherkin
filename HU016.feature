Feature: US16 - Recordatorio Push
  Scenario Outline: Disparo de notificación programada
    Given el usuario tiene activas las notificaciones del sistema
    When el reloj interno coincide con la <hora_configurada>
    Then el sistema dispara la <notificacion_dispositivo>

    Examples:
      | hora_configurada | notificacion_dispositivo                     |
      | 20:00            | "Hola, ¿cómo estuvo tu día? Cuéntame."       |
      | 09:00            | "¡Buenos días! No olvides registrar tu ánimo"|