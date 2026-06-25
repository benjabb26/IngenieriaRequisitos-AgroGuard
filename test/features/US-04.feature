Feature: Gráfico de tendencias históricas de temperatura
  Como supervisor SSOMA a cargo de la seguridad ocupacional
  Quiero visualizar una gráfica de líneas interactiva con la evolución horaria y diaria de la temperatura en la plataforma web
  Para identificar patrones de estrés térmico y exportar reportes para auditorías ante el MINSA o MIDAGRI.

  Scenario: Generación estándar
    Given que el supervisor selecciona un lote y rango de fechas en el panel web
    When hace clic en el control para procesar la información
    Then el sistema renderiza la gráfica lineal en menos de 2 segundos

  Scenario: Filtrado por estrés térmico
    Given que la gráfica histórica de temperatura está cargada en pantalla
    When el supervisor activa el resaltado de excesos climáticos
    Then los segmentos de la línea temporal que superen los 30°C cambian automáticamente a color naranja
