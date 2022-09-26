use eventos_artisticos;

/** la siguiente funcion sirve para saber cuantos espacios para eventos hay mayores a la cantidad de audiencia que se requiera
se ingresa un numero de audiencia, y la funcion devovlera la cantidad de espacios mayores a esa cantidad de publico **/
drop function if exists FN_capacidad ;
DELIMITER //
CREATE FUNCTION FN_capacidad ( cantidad int ) 
RETURNS INT 
DETERMINISTIC 
BEGIN 
DECLARE  NUMERO INT;
set numero = (SELECT count(esp_capacity) FROM espacio 
WHERE esp_capacity > cantidad) ;
RETURN NUMERO;
END//
DELIMITER ; 

/** en la siguiente funcion, se ingresa el ID de un evento, y devuelve el Nombre del evento y la fecha**/
drop function if exists fn_evento;
DELIMITER //
create function fn_evento (id int)
returns varchar (100)
deterministic
begin
declare eventofecha varchar (100);
select concat(event_name,'  ', event_date) as Nombre_del_Evento_y_Fecha from evento
where id_event = id into eventofecha;
return eventofecha;
end//
DELIMITER ;

-- Con la siguiente funcion, ingresamos el ID de un Evento, 
-- y nos dara la suma del total de los costes del mismo
-- esta construida con tres niveles de subconsultas

drop function if exists fn_costo_evento;
Delimiter //
create function fn_costo_evento (id_evento int)
returns int
deterministic
begin
declare Costo_Evento int ;
select (
(select Prod_Sueldo from productor where Id_Prod = (select event_prod from evento where Id_Event = id_evento))+
(select emp_sueldo from empleado where id_emp = (select event_emp from evento where Id_Event = id_evento))+
(select art_sueldo from artista where id_art = (select event_art from evento where Id_Event = id_evento))+
(select prov_costo from proveedor where id_prov = (select event_prov from evento where Id_Event = id_evento))+
(select Esp_Alquiler from espacio where Id_Esp = (select event_esp from evento where Id_Event = id_evento))
) into Costo_Evento  ;
return costo_evento ;
end //
delimiter ;

-- Funcion para calcular el precio de la entrada a partir del ID de un evento


drop function if exists fn_calculo_entrada;
Delimiter //
create function fn_calculo_entrada (id_evento int)
returns int
deterministic
begin
declare Calculo_entrada int ;
declare costoganancia int;
declare capacidadespacio int;
set costoganancia = (select eventos_artisticos.fn_costo_evento(id_evento)*5);
set capacidadespacio = (select Esp_Capacity from espacio 
where Id_Esp= (select event_esp from evento where id_event = id_evento));
select (costoganancia / capacidadespacio
) into Calculo_entrada ;
return Calculo_entrada ;
end //
delimiter ;

