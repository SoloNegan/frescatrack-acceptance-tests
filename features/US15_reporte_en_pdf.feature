# language: es
@EP05 @US15 @funcional
Característica: Descargar el reporte del viaje en PDF
  Como comerciante
  Quiero descargar un reporte del viaje en PDF
  Para sustentar un reclamo ante el proveedor o el transportista

  Antecedentes:
    Dado que el comerciante está vinculado al viaje Ilo – Puno

  Escenario: Descargar el reporte de un viaje finalizado
    Dado que el viaje está finalizado
    Y el viaje tuvo dos alertas
    Cuando el comerciante presiona "Descargar reporte"
    Entonces la aplicación descarga el archivo "Reporte_Ilo-Puno.pdf"
    Y el PDF contiene las siguientes secciones:
      | sección                          |
      | Datos del viaje y del producto   |
      | Gráfico de temperatura           |
      | Alertas con hora y tramo         |
      | Tiempo total fuera de rango      |
      | Código de verificación           |

  Escenario: Viaje todavía en curso
    Dado que el viaje sigue en curso
    Cuando el comerciante busca la opción "Descargar reporte"
    Entonces la aplicación muestra el mensaje "El reporte estará disponible al finalizar el viaje"
    Y el botón "Descargar reporte" aparece desactivado

  Escenario: Error al generar el reporte
    Dado que el viaje está finalizado
    Y el servidor no responde al generar el PDF
    Cuando el comerciante presiona "Descargar reporte"
    Entonces la aplicación muestra el mensaje "No se pudo generar el reporte. Intente nuevamente"

    # Revisado por Thiago Carvalho Castle – Analista de Procesos
