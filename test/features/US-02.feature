Feature: Monitoreo de la velocidad del viento para control de deriva
  Como operario de fumigación agrícola encargado del control de dispersión
  Quiero consultar la velocidad actual del viento en km/h desde la aplicación móvil
  Para decidir técnicamente si iniciar la jornada y evitar pérdidas de agroquímicos.

  Scenario: Consulta de velocidad del viento estable
    Given que la aplicación móvil se encuentra activa y vinculada al lote actual
    When el anemómetro transmite una métrica constante de "8" km/h
    Then la interfaz del dashboard móvil debe renderizar la velocidad actualizada en un tiempo máximo de 3 segundos

  Scenario: Despliegue de advertencia ante ráfagas críticas
    Given que el operario está evaluando las condiciones del microclima en la pantalla de la app
    When la velocidad del viento registrada por el lote supera el umbral límite de "15" km/h
    Then la aplicación móvil debe desplegar un banner parpadeante en el tope de la pantalla
    And el banner debe mostrar el texto de advertencia "Viento crítico para la fumigación"
