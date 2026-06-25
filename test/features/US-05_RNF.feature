Feature: Precisión analítica del sensor térmico
  Como supervisor SSOMA encargado del control de calidad del sistema
  Quiero que la plataforma web procese las lecturas térmicas garantizando un margen de error máximo absoluto de ±0.5°C
  Para asegurar que los reportes de auditoría y cálculos automatizados de riesgo tengan alta fidelidad, eliminando falsas alarmas.

  Scenario: Validación de precisión
    Given un entorno de pruebas con un termómetro patrón certificado
    When el software procesa lecturas en el rango operativo de 10°C a 45°C
    Then la desviación guardada en la base de datos centralizada no debe ser mayor a 0.5°C

  Scenario: Aislamiento de anomalías
    Given que un sensor emite lecturas erráticas fuera de la cota máxima permitida
    When la plataforma web detecta dicha anomalía técnica
    Then el dashboard marca el dispositivo con aviso de mantenimiento 
    And descarta temporalmente sus datos en las estadísticas históricas
