# FrescaTrack · Acceptance Tests

Pruebas de aceptación en Gherkin (español) de **FrescaTrack**, la aplicación de monitoreo de la cadena de frío en el transporte de pescado de la startup **LogiFresh Solutions**.

Curso: 1ASI0786 Ingeniería de Requisitos · NRC 16651 · UPC · Ciclo 202620

## Alcance

Se incluyen las pruebas de las historias de dos Epics de core business y de cuatro historias no funcionales:

| Archivo | User Story | Epic | Tipo | Escenarios |
|---|---|---|---|---|
| `US01_ver_temperatura_actual.feature` | US01 · Ver temperatura actual | EP01 | Funcional | 2 (esquema con 5 ejemplos) |
| `US02_alerta_por_temperatura.feature` | US02 · Alerta por temperatura | EP01 | Funcional | 4 (esquema con 3 ejemplos) |
| `US03_alerta_al_comerciante.feature` | US03 · Alerta al comerciante | EP01 | Funcional | 2 (esquema con 3 ejemplos) |
| `US04_configurar_rango.feature` | US04 · Configurar rango de temperatura | EP01 | Funcional | 2 (esquema con 4 ejemplos) |
| `US13_historial_en_grafico.feature` | US13 · Historial en gráfico | EP05 | Funcional | 3 (con data table) |
| `US14_tramo_de_cada_alerta.feature` | US14 · Tramo de cada alerta | EP05 | Funcional | 2 (esquema con 2 ejemplos) |
| `US15_reporte_en_pdf.feature` | US15 · Reporte en PDF | EP05 | Funcional | 3 (con data table) |
| `US16_compartir_reporte.feature` | US16 · Compartir reporte | EP05 | Funcional | 3 |
| `US22_alerta_en_menos_de_10_segundos.feature` | US22 · Alerta en menos de 10 segundos | EP01 | No funcional · Rendimiento | 2 (esquema con 3 ejemplos) |
| `US23_registro_sin_senal.feature` | US23 · Registro sin señal | EP01 | No funcional · Fiabilidad | 2 (esquema con 3 ejemplos) |
| `US24_historial_inalterable.feature` | US24 · Historial inalterable | EP05 | No funcional · Integridad | 2 (esquema con 3 ejemplos) |
| `US25_temperatura_legible.feature` | US25 · Temperatura legible de un vistazo | EP01 | No funcional · Usabilidad | 3 (esquema con 3 ejemplos) |

Total: 12 archivos `.feature`, 30 escenarios y 50 casos de prueba al expandir los ejemplos.

## Convenciones

- Idioma Gherkin: `# language: es` (Característica, Antecedentes, Escenario, Esquema del escenario, Ejemplos).
- Etiquetas: `@EPxx`, `@USxx`, `@funcional` o `@no_funcional` y el atributo de calidad.
- Los valores de temperatura usan el rango de ejemplo de 0 °C a 4 °C.

## Equipo LogiFresh Solutions

Vasquez Aliaga, Joaquin Luciano · Vasquez Aguilera, Rosa Victoria · Mamani Segovia, Rodrigo Felipe · Medina Mamani, Jean Franco · More Galarreta, Cristopher Josue · Carvalho Castle, Thiago


Revisado por Joaquin Vasquez Aliaga – Líder de Proyecto
