# language: es
@EP01 @US23 @no_funcional @fiabilidad
Característica: Registro de lecturas sin señal
  Como transportista
  Quiero que las lecturas se guarden aunque no haya señal en carretera
  Para no perder el historial del viaje

  Antecedentes:
    Dado que el sensor registra una lectura cada minuto

  Esquema del escenario: Tramo sin cobertura
    Dado que el camión pasa por un tramo sin señal durante <minutos> minutos
    Cuando el celular recupera la señal
    Entonces el sistema recibe <lecturas> lecturas guardadas en el dispositivo
    Y el historial del viaje no presenta huecos en ese tramo

    Ejemplos:
      | minutos | lecturas |
      | 10      | 10       |
      | 40      | 40       |
      | 120     | 120      |

  Escenario: Las lecturas conservan su hora original
    Dado que una lectura se guardó sin señal a las 03:25
    Cuando la lectura se envía al recuperar la señal a las 04:05
    Entonces el historial muestra la lectura con la hora "03:25"
