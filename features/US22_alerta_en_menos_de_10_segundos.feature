# language: es
@EP01 @US22 @no_funcional @rendimiento
Característica: Alerta en menos de 10 segundos
  Como transportista
  Quiero que la alerta me llegue en segundos
  Para actuar antes de que se malogre la carga

  Antecedentes:
    Dado que el celular del transportista tiene conexión a internet
    Y el viaje tiene un límite máximo de 4 °C

  Esquema del escenario: Tiempo de entrega según el tipo de conexión
    Dado que el celular del transportista usa una conexión "<red>"
    Cuando el sensor registra 6 °C
    Entonces el transportista recibe la alerta en un tiempo menor o igual a <tiempo_max> segundos

    Ejemplos:
      | red   | tiempo_max |
      | 4G    | 10         |
      | 3G    | 10         |
      | WiFi  | 10         |

  Escenario: Varias cargas en alerta al mismo tiempo
    Dado que 200 viajes activos registran temperaturas fuera de rango en el mismo minuto
    Cuando el sistema procesa las lecturas
    Entonces cada transportista recibe su alerta en un tiempo menor o igual a 10 segundos
# Revisado por Rodrigo Mamani Segovia – Director de Tecnología
