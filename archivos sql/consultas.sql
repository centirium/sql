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



