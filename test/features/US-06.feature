Feature: Registro digital de incidentes con evidencia en campo
  Como operario agrícola en jornadas de fumigación
  Quiero registrar incidentes con descripción, ubicación geográfica y foto
  Para documentar situaciones de riesgo y asegurar la trazabilidad legal del fundo.

  Scenario: Envío de un informe de incidente completo
    Given que el operario se encuentra en el módulo móvil de "Registro de Incidente"
    And ha completado el campo de descripción con "Derrame menor de pesticida en Sector Norte"
    And el GPS del terminal ha capturado las coordenadas del campo automáticamente
    When adjunta un archivo de imagen válido como "foto_evidencia_01.jpg"
    And presiona el control de acción "Registrar incidente"
    Then el sistema debe almacenar el registro de forma persistente en la base de datos
    And debe retornar en pantalla un mensaje de confirmación con el ID único del incidente generado

  Scenario: Error por falta de evidencia fotográfica obligatoria
    Given que el operario está completando el formulario de reporte de incidentes
    And ha llenado la descripción detallada, la fecha y la hora del suceso
    When intenta guardar el incidente sin haber adjuntado ninguna evidencia fotográfica
    Then el sistema debe bloquear el envío del formulario
    And debe resaltar el campo de archivo adjunto mostrando un mensaje de error que indique "Este campo es obligatorio"
