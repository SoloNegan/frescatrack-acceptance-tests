# language: es
@EP01 @US02 @funcional
Característica: Alerta por temperatura fuera del límite
  Como transportista
  Quiero recibir una alerta cuando la temperatura supere el límite configurado
  Para actuar de inmediato

  Antecedentes:
    Dado que el transportista tiene un viaje activo
    Y el viaje tiene un límite máximo configurado de 4 °C

  Esquema del escenario: La temperatura supera el límite
    Cuando el sensor registra <lectura> a las <hora>
    Entonces el transportista recibe la notificación "Temperatura fuera de rango: <lectura>"
    Y la notificación indica la hora "<hora>"

    Ejemplos:
      | lectura | hora  |
      | 6 °C    | 03:10 |
      | 4,5 °C  | 05:42 |
      | 9 °C    | 22:15 |

  Escenario: La temperatura regresa al rango
    Dado que el transportista recibió una alerta por 6 °C
    Cuando el sensor vuelve a registrar 3 °C
    Entonces la aplicación muestra el estado "En rango"
    Y el sistema deja de enviar alertas de ese viaje

  Escenario: Una lectura en el límite no genera alerta
    Cuando el sensor registra exactamente 4 °C
    Entonces el sistema no envía ninguna alerta

  Escenario: Celular sin conexión al momento de la alerta
    Dado que el celular del transportista no tiene conexión a internet
    Cuando el sensor registra una temperatura de 6 °C
    Entonces el sistema reintenta el envío de la alerta cada minuto
    Y el transportista recibe la alerta al recuperar la conexión
