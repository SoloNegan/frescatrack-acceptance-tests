# language: es
@EP01 @US03 @funcional
Característica: Alerta al comerciante vinculado
  Como comerciante
  Quiero recibir la misma alerta que el transportista
  Para coordinar una solución a tiempo o decidir si recibo la carga

  Antecedentes:
    Dado que el viaje Ilo – Puno tiene un límite máximo de 4 °C

  Esquema del escenario: Quién recibe la alerta según la vinculación
    Dado que el comerciante "<comerciante>" tiene el estado "<vinculo>" en el viaje
    Cuando el sensor de la carga registra 6 °C
    Entonces el comerciante "<comerciante>" "<resultado>" la alerta del viaje

    Ejemplos:
      | comerciante   | vinculo               | resultado  |
      | Carmen Flores | Vinculado             | recibe     |
      | Luis Ramos    | No vinculado          | no recibe  |
      | Ana Quispe    | Invitación pendiente  | no recibe  |

  Escenario: Contenido de la alerta al comerciante
    Dado que el comerciante está vinculado al viaje
    Cuando la temperatura de la carga supera el límite a las 03:10
    Entonces el comerciante recibe una alerta con la temperatura registrada
    Y la alerta indica la hora "03:10" y el nombre del transportista
