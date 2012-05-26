       01 p_informe_venta
           BACKGROUND-COLOR 1 FOREGROUND-COLOR 6 HIGHLIGHT.
           
           02 line l_primera
              col 5 value "Codigo venta: ".
           02 line l_primera 
              col 25 value "Fecha: ".
           02 line l_primera 
              col 20 REQUIRED pic xxxx using codigo_venta.
           02 line l_primera 
              col 32 REQUIRED using fecha.
           02 line l_segunda 
              col 5 value "Codigo articulo ".
           02 line l_segunda 
              col 25 value "Descripcion Articulo ".
           02 line l_segunda 
              col 50 value "Precio ".
           02 line l_segunda 
              col 60 value "Unidades ".
           02 line l_tercera 
              col 5 REQUIRED pic x(4) using codigo_articulo.
           02 line l_tercera
              col 25 REQUIRED pic x(20) using descripcion.
           02 line l_tercera 
              col 50 REQUIRED pic 9999.99 using precio_venta.
           02 line l_tercera 
              col 60 REQUIRED pic 99 using numero_unidades.
           02 line l_cuarta 
              col 1 pic x(79) value all "-".
      
    