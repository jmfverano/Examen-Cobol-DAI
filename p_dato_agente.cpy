       01 p_dato_agente
           BACKGROUND-COLOR 1 FOREGROUND-COLOR 6 HIGHLIGHT.
           02 line 5 col 1 pic x(79) value all "-".
           02 line 6 col 5 value "Agente comercial.".
           02 line 7 col 5 value "*****************".
           02 line 8 col 5 value "Codigo: ".
           02 line 8 col 17 value "Nombre: ".
           02 line 8 col 40 value "Apellidos: ".
           
           02 line 8 col 14 REQUIRED pic xx using codigo.
           02 line 8 col 25 REQUIRED pic x(15) using nombre.
           02 line 8 col 52 REQUIRED pic x(15) using apellidos.
           02 line 9 col 1 pic x(79) value all "-".
    