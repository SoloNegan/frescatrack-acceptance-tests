# language: es
@EP05 @US13 @funcional
Característica: Historial de temperatura del viaje en un gráfico
  Como comerciante
  Quiero ver el historial de temperatura del viaje en un gráfico
  Para saber si hubo una ruptura del frío y en qué momento

  Antecedentes:
    Dado que el comerciante está vinculado al viaje Ilo – Puno
    Y el viaje tiene un rango de 0 °C a 4 °C

  Escenario: Viaje con una ruptura de frío
    Dado que el viaje registró estas lecturas:
      | hora  | temperatura |
      | 01:00 | 2 °C        |
      | 02:00 | 3 °C        |
      | 03:10 | 6 °C        |
      | 03:40 | 5 °C        |
      | 04:10 | 3 °C        |
    Cuando el comerciante abre el historial del viaje
    Entonces la aplicación muestra el gráfico de temperatura con las cinco lecturas
    Y la aplicación resalta el tramo entre las 03:10 y las 03:40 como "Fuera de rango"

  Escenario: Viaje sin rupturas
    Dado que todas las lecturas del viaje están entre 0 °C y 4 °C
    Cuando el comerciante abre el historial del viaje
    Entonces la aplicación muestra el gráfico sin tramos resaltados
    Y la aplicación muestra el mensaje "La carga se mantuvo en rango durante todo el viaje"

  Escenario: Viaje sin lecturas
    Dado que el viaje no tiene lecturas registradas
    Cuando el comerciante abre el historial del viaje
    Entonces la aplicación muestra el mensaje "Este viaje no tiene lecturas registradas"
