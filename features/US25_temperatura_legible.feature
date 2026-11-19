# language: es
@EP01 @US25 @no_funcional @usabilidad
Característica: Temperatura legible de un vistazo
  Como transportista
  Quiero que la temperatura y su estado se vean con números grandes y colores con texto
  Para leerlos de un vistazo sin distraerme al manejar

  Antecedentes:
    Dado que el transportista tiene un viaje activo

  Escenario: Tamaño de la temperatura
    Cuando el transportista abre la pantalla del viaje
    Entonces la aplicación muestra la temperatura con un tamaño mínimo de 32 puntos

  Esquema del escenario: El estado se indica con color y con texto
    Dado que la carga está "<estado>"
    Cuando el transportista mira la pantalla del viaje
    Entonces la aplicación muestra el texto "<texto>" junto al color "<color>"

    Ejemplos:
      | estado         | texto          | color   |
      | en rango       | En rango       | verde   |
      | fuera de rango | Fuera de rango | rojo    |
      | sin señal      | Sin monitoreo  | gris    |

  Escenario: Uso a pleno sol
    Dado que el celular tiene el brillo al máximo bajo luz solar
    Cuando el transportista mira la pantalla del viaje
    Entonces el texto de la temperatura mantiene un contraste mínimo de 4,5:1 con el fondo
