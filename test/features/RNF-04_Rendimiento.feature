Feature: Optimización de consultas y eficiencia en el tiempo de respuesta predictivo
  Como responsable de la infraestructura técnica del sistema IoT AgroGuard
  Quiero que el cálculo y la renderización de las predicciones microclimáticas se realicen en un máximo de 5 segundos
  Para garantizar que las decisiones preventivas de detención en campo ocurran sin latencias operativas.

  Scenario: Respuesta óptima del motor analítico bajo carga de solicitudes simultáneas
    Given que el backend se encuentra procesando concurrentemente la telemetría en tiempo real de "50" sensores IoT de campo
    When un usuario solicita la consulta del pronóstico de microclima para las próximas 4 horas desde la interfaz web
    Then las rutinas del modelo predictivo deben procesar los algoritmos matemáticos y devolver el resultado estructurado
    And la pantalla debe renderizar la gráfica lineal completa de predicción en un tiempo cronometrado menor o igual a "5" segundos
