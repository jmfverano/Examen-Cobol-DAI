       program-id. insertar_venta as "insertar_venta".

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
       77 continuar pic x.
       SCREEN SECTION.
      *Utilizara la pantalla de marcos definida en la librería.
       copy "p_marcos.cpy".
      *Utilizara la pantalla de alta.
       copy "p_alta.cpy".
      *Pantalla que indica que la operación se completo bien.
       copy "p_completa.cpy".
      *Pantalla que indica el error en la operacion.
       copy "p_error_operacion.cpy".
       procedure division.
       open i-o ventas.
       display pantallaMarco.
       display pantalla_alta.
       accept pantalla_alta.
       accept fecha from DATE.
       write RVenta
         invalid key 
           display PantallaMarco
           display pantalla_opera_error
           accept continuar
         not invalid key
           display PantallaMarco
           display pantalla_completa
           accept continuar
       end-write.
       close ventas.
       exit program.
