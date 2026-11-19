# language: es
@EP05 @US16 @funcional
Característica: Compartir el reporte al entregar la carga
  Como transportista
  Quiero compartir el reporte del viaje al entregar la carga
  Para demostrar que mantuve el frío

  Escenario: Compartir el reporte por WhatsApp
    Dado que el transportista marcó el viaje como "Entregado"
    Cuando el transportista presiona "Compartir reporte"
    Y el transportista elige "WhatsApp"
    Entonces la aplicación genera un enlace al reporte del viaje
    Y la aplicación abre WhatsApp con el enlace listo para enviar

  Escenario: Abrir el enlace recibido
    Dado que el comerciante recibió el enlace del reporte
    Cuando el comerciante abre el enlace
    Entonces el sistema muestra el reporte del viaje en modo de solo lectura
    Y el sistema no permite editar ningún dato

  Escenario: Viaje aún no entregado
    Dado que el viaje sigue en curso
    Cuando el transportista busca la opción "Compartir reporte"
    Entonces la aplicación muestra el mensaje "Marque el viaje como entregado para compartir el reporte"
