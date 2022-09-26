-- Vistas. ejecutando este script, se crearan las vistas y se ejecutaran al final

-- vista para ver Eventos del año 2023
create or replace view vw_2023_events as
select event_name as 'Eventos de Marzo' from evento where Event_Date between 20230101 and 20231231;

-- En esta vista se pueden ver los datos de todos los Productores que tengan de sueldo igual o menor de 50000, 
-- ordenado por el campo Sueldo de manera ascendente
create or replace view vw_prod_sueldo_max50000 as
select prod_name as Nombre, prod_lastname as Apellido, prod_phone as Telefono , prod_sueldo as Sueldo from productor
where prod_sueldo <= 50000 order by sueldo;

-- Esta vista sirve para ver la suma de los sueldos de todos los Empleados. 

create or replace view vw_Emp_Sueldos as
select sum(Emp_Sueldo) as 'Sueldos del Personal' from empleado;

-- vista del personal completo de empleados y productores implicados en todos los eventos del año 2023

create or replace view vw_activeemp_23 as
select Prod_Name as nombre , prod_lastname as apellido from productor union
select Emp_Name , emp_lastname from empleado;

-- Capacidad de todos los espacion disponibles para eventos

create  or  replace view vw_spacescapacity as
select Esp_Name as Nombre, Esp_Capacity as Capacidad from espacio;

-- Emails de todo el personal y proveedores adheridos

create or replace view vw_emails as
select p.prod_email as Productores, e.emp_email as Empleados, pr.prov_email as Proveedores,
a.art_email as Artistas  from productor as p
join empleado as e on Id_Emp = Id_Prod join proveedor as pr on id_prod = id_prov
join artista as a on id_prov = id_art;

select * from vw_activeemp_23;
select * from vw_2023_events;
select * from vw_prod_sueldo_max50000;
select * from vw_spacescapacity;
select * from vw_emails;
select * from vw_Emp_Sueldos;