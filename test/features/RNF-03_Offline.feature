Feature: Persistencia local y volcado asíncrono para operaciones en zonas rurales sin señal
  Como operario agrícola que trabaja en campos apartados de difícil acceso tecnológico
  Quiero que la app móvil almacene los datos localmente cuando no haya cobertura celular
  Para evitar la pérdida de trazabilidad de incidentes y sincronizarlos al recuperar conectividad.

  Scenario: Almacenamiento local en modo offline
    Given que el operario móvil se encuentra en un sector de fumigación sin señal de red inalámbrica
    And completa el registro de un incidente de riesgo en la aplicación de campo
    When presiona el botón de envío en ausencia total de internet
    Then la aplicación móvil debe capturar el payload y guardarlo de forma segura en la base de datos relacional local "SQLite" interna del celular
    And debe dejar el registro marcado en una cola de "Sincronización Pendiente" sin arrojar error de caída de red
