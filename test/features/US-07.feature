Feature: Seguimiento y control de estados de incidentes de seguridad
  Como supervisor SSOMA a cargo de la seguridad ocupacional
  Quiero visualizar y actualizar el estado de los incidentes en la plataforma web
  Para controlar la ejecución de acciones correctivas del personal.

  Scenario: Actualización progresiva de un incidente en revisión
    Given que el supervisor SSOMA ha ingresado a la plataforma web con credenciales administrativas
    And se encuentra dentro del módulo "Matriz de Control de Incidentes"
    And selecciona un registro específico cuyo estado actual es "Enviado"
    When modifica el control de estado de la fila seleccionando la opción "En revisión"
    And confirma el guardado de la edición
    Then el sistema debe actualizar el estado del incidente en tiempo real en las tablas del sistema
    And debe grabar de forma interna un registro histórico con la fecha y el ID del supervisor que realizó la modificación
