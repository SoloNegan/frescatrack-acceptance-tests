# language: es
@EP01 @US01 @funcional
Característica: Ver la temperatura actual de la carga
  Como transportista
  Quiero ver la temperatura actual de la carga en mi celular
  Para saber si el frío se mantiene sin detener el camión

  Antecedentes:
    Dado que el transportista inició sesión en FrescaTrack
    Y tiene un viaje activo con un rango configurado de 0 °C a 4 °C

  Esquema del escenario: Mostrar la temperatura y su estado según el rango
    Dado que el sensor de la carga registra <temperatura>
    Cuando el transportista abre la pantalla del viaje
    Entonces la aplicación muestra la temperatura "<temperatura>"
    Y la aplicación muestra el estado "<estado>"

    Ejemplos:
      | temperatura | estado         |
      | 2 °C        | En rango       |
      | 0 °C        | En rango       |
      | 4 °C        | En rango       |
      | 6 °C        | Fuera de rango |
      | -2 °C       | Fuera de rango |

  Escenario: La pantalla se actualiza con una nueva lectura
    Dado que la pantalla del viaje muestra "2 °C"
    Cuando el sensor envía una nueva lectura de 3 °C
    Entonces la aplicación muestra "3 °C" sin que el transportista recargue la pantalla
