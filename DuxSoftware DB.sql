Create database duxsoftware;
use duxsoftware;


select * from producto where id_rubro='1' and fecha_creacion=current_date();

select b.nombre, sum(a.precio_unitario) as Monto_total from venta a inner join cliente b on (a.id_cliente = b.id_cliente) group by b.nombre;

select  b.nombre, sum(a.cantidad) as ventas_totales from venta a inner join producto b on (a.codigo_producto = b.codigo) group by b.nombre;

select b.nombre, count(a.cantidad) as nro_productos from venta a inner join cliente b on (a.id_cliente = b.id_cliente) where (select month(a.fecha))='08' group by b.nombre;

select a.nombre, b.id_venta from producto a inner join venta b on (a.codigo = b.codigo_producto) where id_rubro = '2' group by a.nombre;


