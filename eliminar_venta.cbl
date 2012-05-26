       program-id. eliminar_venta as "eliminar_venta".

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
       SCREEN SECTION.
      *Utilizara la pantalla de marcos definida en la librería.
       copy "p_marcos.cpy".
      *Utilizara la pantalla de alta.
       copy "p_alta.cpy".
      *Pantalla que indica que la operación se completo bien.
       copy "p_completa.cpy".
      *Pantalla que indica el error en la operacion.
       copy "p_error_operacion.cpy".
      *Pantalla que obtendra el codigo de venta.
       copy "obten_codigo_venta.cpy".
      *Muestra al final de la pantalla la opción de eliminar.
       copy "p_confirma_eliminar.cpy".
       
       procedure division.
       display pantallaMarco.
       display obten_codigo_venta.
       accept obten_codigo_venta.
       open i-o ventas.
       read ventas
         key is codigo_venta
         INVALID key 
           display PantallaMarco
           display pantalla_opera_error
           accept continuar
         not invalid key 
           display PantallaMarco
           display pantalla_alta
           display p_confi_eliminar
           accept p_confi_eliminar
           if continuar = 'S' then
             delete ventas
               invalid key 
                 display pantallaMarco
                 display pantalla_opera_error
                 accept continuar
               not invalid key
                 display pantallaMarco
                 display pantalla_completa
                 accept continuar
             end-delete
            end-if
       end-read.
       close ventas.
       exit program.
