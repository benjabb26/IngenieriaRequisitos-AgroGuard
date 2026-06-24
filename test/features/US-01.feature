Feature: Monitoreo de niveles de toxicidad en campo
  Como operario de fumigación agrícola expuesto a riesgos químicos
  Quiero ver el nivel actual de toxicidad en ppm con colores semafóricos en la app móvil
  Para saber si el lote es seguro antes de ingresar y evitar decisiones empíricas.

  Scenario: Visualización estándar en rango seguro
    Given que el operario ha iniciado sesión en la aplicación móvil AgroGuard
    And se encuentra en la pantalla principal de "Monitoreo de Toxicidad"
    When el sensor IoT del lote envía una lectura de telemetría de "120" ppm
    Then la pantalla debe refrescar el valor numérico en menos de 3 segundos
    And el indicador visual del semáforo debe cambiar a color "Verde" (Seguro)

  Scenario: Activación de alarma por peligro crítico
    Given que el operario tiene la aplicación abierta en su terminal móvil
    When el hardware IoT de la zona activa transmite un pico de toxicidad de "280" ppm
    Then el indicador visual de la interfaz gráfica debe cambiar inmediatamente a color "Rojo"
    And el terminal móvil debe ejecutar una vibración física intermitente junto con un sonido audible de alerta
