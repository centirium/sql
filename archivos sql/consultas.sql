use cuatrovientos;

select nombre_cli as nombre,nif from clientes
where lower (ciudad) = "OVIEDO";

select codigo_empl
from empleados
where sueldo=20000 OR sueldo=50000;

select nombre_dep,ciudad_dep
from departamentos
where ciudad_dep in ('Barcelona','Pamplona');

select nombre_empl
from empleados
where nombre_empl LIKE 'J___';

select distinct sueldo
from empleados;

select count(*)
from departamentos
where ciudad_dep="oviedo"; /* sumar todos los registros*/

select max(sueldo) as maxSueldo /* para hallar el maximo de algo*/
from empleados;

select codigo_empl,nombre_empl,sueldo
from empleados
order by sueldo, nombre_empl; /*ordenar los resultados    */

select nombre_dep, ciudad_dep, avg(sueldo) as media_sueldo
from empleados group by nombre_dep,ciudad_dep;

select num_proyec,count(codigo_empl) as num_empleado from empleados
group by num_proyec;

select * from empleados;
select num_proyec
from empleados
group by num_proyec
having sum(sueldo) > 18000;

select p.codigo_proyec,p.precio,c.nif,p.codigo_cliente
from clientes c join proyectos p on c.codigo_cli where c.codigo_cli= 5;

select codugo_empl, nombre_empl
from empleados natural join departamentos
where telefono = '935361345';


select *
from (empleados join proyectos on num_proyec=codigo_proyec)
 join clientes on codigo_cliente=codigo_cli;
 

select ciudad 
from clientes union select ciudad_dep
from departamentos;

select c.ciudad from clientes c where c.ciudad in(select d.ciudad_dep from departamentos d 
where c.ciudad=d.ciudad_dep);

create table clientes2 like clientes;
alter table clientes2 modify codigo_cli auto_increment;





