       01 pantalla_alta
           BACKGROUND-COLOR 1 FOREGROUND-COLOR 6 HIGHLIGHT.
           02 line 4 col 5 value "Codigo venta: ".
           02 line 6 col 5 value "Agente comercial.".
           02 line 7 col 5 value "*****************".
           02 line 8 col 5 value "Codigo: ".
           02 line 9 col 5 value "Nombre: ".
           02 line 10 col 5 value "Apellidos: ".
           02 line 12 col 5 value "Articulo".
           02 line 13 col 5 value "****************". 
           02 line 14 col 5 value "Codigo: ".
           02 line 15 col 5 value "Descripcion: ".
           02 line 16 col 5 value "Precio: ".
           02 line 17 col 5 value "Unidades: "  .
           
           02 line 4 col 20 REQUIRED pic xxxx using codigo_venta.
           02 line 8 col 14 REQUIRED pic xx using codigo.
           02 line 9 col 14 REQUIRED pic x(15) using nombre.
           02 line 10 col 17 REQUIRED pic x(15) using apellidos.
           02 line 14 col 14 REQUIRED pic x(4) using codigo_articulo.
           02 line 15 col 19 REQUIRED pic x(20) using descripcion.
           02 line 16 col 14 REQUIRED pic 9999V99 using precio_venta.
           02 line 17 col 16 REQUIRED pic 99 using numero_unidades.
           