Feature: Cifrado robusto y protección de datos confidenciales del personal de campo
  Como supervisor SSOMA responsable del cumplimiento de las normativas legales de privacidad
  Quiero que toda la información confidencial de los perfiles y contactos médicos esté cifrada
  Para evitar filtraciones masivas de datos y asegurar el anonimato ante ataques externos.

  Scenario: Persistencia segura con hash y cifrado de registros médicos y de contacto
    Given que un usuario con rol de Administrador registra la ficha técnica de un nuevo operario
    And completa los campos críticos de "Contraseña", "PIN de seguridad" y "Teléfono de contacto de emergencia"
    When el backend de AgroGuard procesa el guardado en la base de datos centralizada
    Then el sistema debe aplicar algoritmos de hash y cifrado criptográfico simétrico "AES-256" sobre dichos atributos antes de escribir el bloque de datos
