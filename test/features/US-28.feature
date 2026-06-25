Feature: Modo de interfaz de alto contraste
  Como operario agrícola
  Quiero poder activar un "Modo de alto contraste" (letras negras gruesas sobre fondo blanco/amarillo) en la app
  Para poder leer las métricas y alertas claramente incluso bajo el resplandor directo del sol en el campo.

  Scenario: Activación en campo
    Given que el operario ingresa a la configuración visual de la app
    When activa el modo "Alto Contraste"
    Then la interfaz elimina sombras y aumenta el grosor de las fuentes inmediatamente
    And maximiza la legibilidad bajo el sol
