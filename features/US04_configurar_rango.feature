# language: es
@EP01 @US04 @funcional
Característica: Configurar el rango de temperatura del viaje
  Como transportista
  Quiero configurar el rango de temperatura según el producto que transporto
  Para que las alertas sean correctas

  Antecedentes:
    Dado que el transportista está registrando un viaje

  Esquema del escenario: Validación del rango ingresado
    Cuando el transportista ingresa un mínimo de <minimo> y un máximo de <maximo>
    Y el transportista presiona "Guardar"
    Entonces la aplicación muestra "<mensaje>"
    Y el rango <guardado> para el viaje

    Ejemplos:
      | minimo | maximo | mensaje                                   | guardado     |
      | 0 °C   | 4 °C   | Rango guardado                            | se guarda    |
      | -1 °C  | 2 °C   | Rango guardado                            | se guarda    |
      | 6 °C   | 2 °C   | El mínimo debe ser menor que el máximo    | no se guarda |
      | 3 °C   | 3 °C   | El mínimo debe ser menor que el máximo    | no se guarda |

  Escenario: Campo vacío
    Cuando el transportista deja vacío el valor máximo
    Y el transportista presiona "Guardar"
    Entonces la aplicación muestra "Complete el valor máximo"
    Y la aplicación no guarda el rango
