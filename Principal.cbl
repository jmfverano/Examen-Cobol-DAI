       program-id. Principal as "Principal".

       environment division.
       configuration section.
       input-output section.
       copy "file_control.cpy".
       data division.
       file section.
       copy "estructura_venta.cpy".
       working-storage section.
      *Datos predefinidos para iniciar sesion.
       01 UsuariosPredefinidos.
           02 usuario1.
               03 filler pic x(12) value "JosePerez".
               03 filler pic x(12) value "spiderman".
           02 usuario2.
               03 filler pic x(12) value "MariaTomei".
               03 filler pic x(12) value "catwoman".
           02 usuario3.
               03 filler pic x(12) value "RobertoCasas".
               03 filler pic x(12) value "hulkman".
      *Datos se redefines los datos.        
       01 TablaUsuarios redefines UsuariosPredefinidos.
           02 elementos occurs 3.
               03 nombreUser  pic x(12).
               03 clave       pic x(12). 
      *Variables que usara en programa.
       77 login pic x(10).
       77 clave2 pic x(10).
       77 NumeroIntentos pic 99 value 0.     
       77 con pic 99.
       77 continuar pic x.
       77 opcion pic 9.   
       SCREEN section.
      *La pantalla de marcos es compartida con toda la aplicación.
       copy "p_marcos.cpy".
      *Dibula la pantalla que obtiene los datos de indentificacón.      
       01 PantallaIdentificacion
       BACKGROUND-COLOR 1 FOREGROUND-COLOR 6 HIGHLIGHT.
           02 LINE 8 COLUMN 10 VALUE "Login:".
           02 LINE 10 COLUMN 10 value "Contrasena:".
           02 line 8 column 22 to login.
           02 line 10 column 22 to clave2 SECURE.
      *Pantalla pata indicar que se ha agotado el numero de intentos.
       01 PantallaDenegar
           BACKGROUND-COLOR 1 FOREGROUND-COLOR 6 HIGHLIGHT.
           02 beep.
           02 LINE 8 COLUMN 10 VALUE "No tiene acceso a la aplicacion".
           02 LINE 10 COLUMN 10 value "Lo sentimos.". 
       
       01 PantallaError
           BACKGROUND-COLOR 1 FOREGROUND-COLOR 6 HIGHLIGHT.
           02 beep.
           02 LINE 15 COLUMN 10 VALUE "Login o contraseña incorrectas".
           02 line 18 column 15 value "Pulse una tecla para continuar".
       copy "menu_principal.cpy".    
       procedure division.
      *Comprueba el nombre de usuario y la contraseña.
       ComprobarLogin.
       perform 2 times
      *    Dibula los marcos de la pantalla.
           display PantallaMarco
      *    Dibuja la pantalla de identificación.
           display PantallaIdentificacion
      *    Obtiene los datos para su comprobacion.
           accept PantallaIdentificacion
           perform test after VARYING con from 1 by 1 until con = 2
               if login = nombreUser(con) and Clave2 = clave(con) then
                   next sentence
               else
                  display PantallaError
                  accept continuar
               end-if
           end-perform
           compute numeroIntentos = numeroIntentos + 1
           compute con = 1
           if NumeroIntentos = 2
               display PantallaMarco
               display PantallaDenegar
               stop run
           end-if
       end-perform.
       Menu_Principal.
       display pantallaMarco
      *Utilizaremos la pantalla de la libreria.
       display pantallaMenu.
       accept pantallaMenu.
       evaluate opcion
        when 1 perform alta
        when 2 perform mostrar
        when 3 perform eliminar
        when 4 perform informe
        when 5 stop run
        when other perform menu_principal
       end-evaluate.
       
       alta.
      *Llama a insertar venta, tras completar el proceso, vuele al menu.
       call "insertar_venta".
       perform Menu_Principal.
       
       mostrar.
      *Llama a consultar venta, cuando termine volvera al menu.
       call "consulta_venta".
       perform Menu_Principal.
       
       eliminar.
      *Llama a eliminar venta, la cuando termine volvera al menu.
       call "eliminar_venta".
       perform Menu_Principal.
       
       informe.
      *Llama a informes venta, cuando el proceso termine vuelve.
       call "informe_venta".
       perform Menu_Principal.
       
       end program Principal.
