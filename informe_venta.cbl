       program-id. informe_venta as "informe_venta".
       environment division.
       configuration section.
       input-output section.
      *Utiliza las librerias del control de ficheros.
       copy "file_control.cpy".
       data division.
       file section.
      *Ulitila las librerias de la estructura de datos.
       copy "estructura_venta.cpy".
       working-storage section.
       77 continuar        pic x.
       77 aux_agente       pic xx.
       77 bool             pic 9.
       77 l_primera        pic 99.
       77 l_segunda        pic 99.
       77 l_tercera        pic 99.
       77 l_cuarta         pic 99.
       77 bucle            pic 9.
       SCREEN SECTION.
      *Utilizara la pantalla de marcos definida en la librería.
       copy "p_marcos.cpy".
      *Utilizara la pantalla de alta.
       copy "p_alta.cpy".
      *Pantalla que indica que la operación se completo bien.
       copy "p_completa.cpy".
      *Pantalla que indica el error en la operacion.
       copy "p_error_operacion.cpy".
      *Pantalla que obtendra el codigo de agente.
       copy "obten_codigo_agente.cpy".
      *Muestra al final de la pantalla un linea indicando que continue.
       copy "p_continuar.cpy".
      *Esta pantalla muestra los datos del agente.
       copy "p_dato_agente.cpy".
      *Esta pantalla muesta los datos de la venta del agente.
       copy "datos_informe.cpy".
       
       procedure division.
       display pantallaMarco.
       display obten_codigo_agente.
       accept obten_codigo_agente.
       open i-o ventas.
       move 0 to bool.
       move 0 to bucle.
       move 10 to l_primera.
       move 11 to l_segunda.
       move 12 to l_tercera.
       move 13 to l_cuarta.
       perform until bucle = 1
       read ventas next
          at end
           move 1 to bucle
         not at end 
      *    Ahora realiza la busque en todos datos.  
           if aux_agente = codigo then
             if bool = 0 then
               display PantallaMarco
               display p_dato_agente
             end-if
             display p_informe_venta
             compute l_primera = l_primera + 8
             compute l_segunda = l_segunda + 8
             compute l_tercera = l_tercera + 8
             compute l_cuarta = l_cuarta + 8
           end-if
       end-read
       end-perform.
       accept continuar.
       close ventas.
       exit program.
