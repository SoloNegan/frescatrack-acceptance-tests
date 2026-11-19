# language: es
@EP05 @US14 @funcional
Característica: Tramo de la ruta de cada alerta
  Como comerciante
  Quiero ver en qué tramo de la ruta ocurrió cada alerta
  Para identificar dónde se rompió el frío

  Antecedentes:
    Dado que el comerciante abrió el historial del viaje Ilo – Puno

  Esquema del escenario: Ubicar una alerta según la señal disponible
    Dado que el viaje tuvo una alerta a las <hora> con señal GPS "<gps>"
    Cuando el comerciante selecciona esa alerta en el historial
    Entonces la aplicación muestra en el mapa "<ubicacion>"
    Y la aplicación muestra la etiqueta "<etiqueta>"

    Ejemplos:
      | hora  | gps        | ubicacion                          | etiqueta              |
      | 03:10 | disponible | el tramo donde ocurrió la alerta   | Ubicación exacta      |
      | 05:25 | sin señal  | la última ubicación conocida       | Ubicación aproximada  |

  Escenario: Viaje con varias alertas
    Dado que el viaje tuvo tres alertas
    Cuando el comerciante abre el mapa del historial
    Entonces la aplicación muestra tres marcadores numerados en la ruta
    Y cada marcador indica la hora y la temperatura de su alerta
