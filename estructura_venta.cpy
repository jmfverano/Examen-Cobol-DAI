       fd ventas
         value of file-id is ".\microelectronica.dat"
         data record is RVenta.
       01 RVenta.
          02 codigo_venta pic x(4).
          02 fecha.
             03 anio      pic 99.
             03 mes       pic 99.
             03 dia       pic 99.
          02 agente_comercial.
             03 codigo          pic xx.
             03 nombre          pic x(15).
             03 apellidos       pic x(15).
          02 articulo.
             03 codigo_articulo pic x(4).
             03 descripcion     pic x(20).
             03 precio_venta    pic 9999v99.
             03 numero_unidades pic 99.