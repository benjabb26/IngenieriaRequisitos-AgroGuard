Feature: Validación de precisión analítica y aislamiento de anomalías térmicas
  Como supervisor SSOMA encargado de la calidad técnica del ecosistema IoT
  Quiero que la plataforma procese las variables garantizando un error máximo absoluto de +/-0.5°C
  Para asegurar reportes de auditoría de alta fidelidad y evitar falsas alarmas.

  Scenario: Cumplimiento de la cota de desviación estándar frente a patrón certificado
    Given un entorno de calibración controlado con un termómetro patrón certificado de laboratorio
    When el software de procesamiento analítico lee muestras térmicas continuas en el rango operativo de "10" a "45" grados Celsius
    Then la desviación matemática registrada entre el hardware IoT de AgroGuard y el patrón no debe exceder los "0.5" grados Celsius de margen absoluto
