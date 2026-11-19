# language: es
@EP05 @US24 @no_funcional @integridad
Característica: Historial de temperatura inalterable
  Como comerciante
  Quiero que el historial de temperatura no pueda editarse
  Para que sirva como prueba en un reclamo

  Antecedentes:
    Dado que el viaje Ilo – Puno está finalizado

  Esquema del escenario: Nadie puede modificar una lectura
    Cuando el usuario con rol "<rol>" intenta editar una lectura del historial
    Entonces el sistema rechaza el cambio
    Y la lectura original queda igual

    Ejemplos:
      | rol           |
      | Transportista |
      | Comerciante   |
      | Administrador |

  Escenario: Verificación del reporte
    Dado que el comerciante descargó el reporte del viaje con su código de verificación
    Cuando un tercero ingresa ese código en la página de verificación de FrescaTrack
    Entonces el sistema confirma que el reporte coincide con el historial original
