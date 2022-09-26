use eventos_artisticos;

/** El siguiente SP sirve para realizar una auditoria sobre los LOGs de la tabla Productor,
se ingresa la cantidad de dias , para recorrer una N cantidad de dias al pasado y ver
los cambios realizados en la tabla Productor **/

drop procedure if exists sp_log_prod;

delimiter \\
create procedure sp_log_prod
(inout p_days int)
begin
select * from log_productor where DATE_SUB(CURDATE(),  INTERVAL @p_days DAY)  < date(fecha_upd_ins_del) ;
end \\
delimiter;



/** El siguiente SP, sirve para ver una tabla ordenando por el campo que se prefiera, 
de manera ascendente o descendente. Se ingresan tres parametros, 
el nombre de la tabla, el campo, y la opcion de un orden descendente o ascendente.
**/

drop procedure if exists sp_ordenar;

delimiter \\
create procedure sp_ordenar
(inout param_table varchar (32), inout param_order varchar (32), inout param_asc_desc varchar(32))
begin
set @t1 = concat('select * from ' , param_table, ' u order by', ' ', param_order, ' ', param_asc_desc);
prepare param_stmt from @t1;
execute param_stmt;
deallocate prepare param_stmt;
end \\
delimiter ;


/**  Con este procedimiento insertaremos un registro nuevo de Evento. 
En el mismo los parametros seran algunos campos,
y calculara automaticamente el preciode la entrada, e ingresara ese resultado como valor de ese campo. **/

  drop procedure if exists sp_insert_evento;

delimiter \\

create procedure sp_insert_evento
( inout p_Event_Date date,
 inout p_Event_Name varchar (15) ,
 inout p_Event_Prod int,
 inout p_Event_Esp int ,
 inout p_Event_Art int,
 inout p_Event_Emp int,
 inout p_Event_Prov int,
 out p_event_entrada int)
   begin
   declare p_Event_Entrada int;
   set @p_Event_Entrada = ((
(select Prod_Sueldo from productor where Id_Prod = p_Event_Prod)+
(select emp_sueldo from empleado where id_emp = p_Event_Emp)+
(select art_sueldo from artista where id_art = p_Event_Art)+
(select prov_costo from proveedor where id_prov = p_Event_Prov)+
(select Esp_Alquiler from espacio where Id_Esp = p_Event_Esp)
) * 5) / (select esp_capacity from espacio where id_esp = p_Event_Esp); 
  insert into evento ( Event_Date, Event_Name, Event_Prod, Event_Esp, Event_Art, 
  Event_Emp, Event_Prov, Event_Entrada )
  values (@p_Event_Date, @p_Event_Name, @p_Event_Prod, @p_Event_Esp, 
  @p_Event_Art, @p_Event_Emp, @p_Event_Prov, @p_Event_Entrada);
  	end \\
  delimiter ;



-- Con este SP insertamos un registro en la Tabla Artista, a partir de los campos obligatorios del mismo

    drop procedure if exists sp_insert_artista;

 delimiter \\
create procedure sp_insert_artista
(
 inout p_art_Email varchar(30) ,
 inout p_art_Name varchar(20) ,
 inout p_art_Phone varchar(20) ,
 inout p_art_Cuit varchar(13),
 inout p_art_Sueldo int )
   begin
  insert into artista ( art_Email, art_Name, art_Phone, art_Cuit, art_Sueldo )
  values (@p_art_Email, @p_art_Name, @p_art_Phone, @p_art_Cuit, @p_art_Sueldo);
	end \\
  delimiter ;
  

-- Procedimiento para borrar artista a partir de su ID

drop procedure if exists sp_del_artista;
  
  delimiter \\
  create procedure sp_del_artista
  (in p_id_art int )
  begin
  delete from artista where id_art = p_id_art;
  end \\
  delimiter ;
  
-- insercion de registros en la Tabla Empleado

drop procedure if exists sp_insert_empleado;

 delimiter \\
create procedure sp_insert_empleado
(inout p_Emp_Espec int ,
 inout p_Emp_Email varchar(30) ,
 inout p_Emp_Name varchar(20) ,
 inout p_Emp_Lastname varchar(20) ,
 inout p_Emp_Phone varchar(20) ,
 inout p_Emp_Cuit varchar(13),
 inout p_Emp_Sueldo int )
   begin
  insert into empleado ( Emp_Espec, Emp_Email, Emp_Name, Emp_Lastname, Emp_Phone, Emp_Cuit, Emp_Sueldo )
  values (@p_Emp_Espec, @p_Emp_Email, @p_Emp_Name, @p_Emp_Lastname , @p_Emp_Phone, @p_Emp_Cuit, @p_Emp_Sueldo);
  end \\
  delimiter ;
  
  
     drop procedure if exists sp_insert_espacio;

 delimiter \\
create procedure sp_insert_espacio
(inout p_esp_adress varchar (30),
 inout p_esp_Email varchar(30) ,
 inout p_esp_Name varchar(20) ,
 inout p_esp_capacity int ,
 inout p_esp_phone varchar(13),
 inout p_esp_alquiler int )
   begin
  insert into espacio ( esp_adress, esp_Email, esp_Name, esp_capacity, esp_phone, esp_alquiler )
  values (@p_esp_adress, @p_esp_Email, @p_esp_Name, @p_esp_capacity, @p_esp_phone, @p_esp_alquiler );
	end \\
  delimiter ;
  
     drop procedure if exists sp_insert_productor;

 delimiter \\
create procedure sp_insert_productor
( inout p_prod_Name varchar(20) ,
 inout p_prod_lastname varchar (20) ,
 inout p_prod_phone varchar(13),
 inout p_prod_Email varchar(30) ,
 inout p_prod_cuit varchar (13),
 inout p_prod_sueldo int )
   begin
  insert into productor ( Prod_Name, Prod_LastName, Prod_Phone, Prod_Email, Prod_Cuit, Prod_Sueldo)
  values (@p_prod_Name, @p_prod_lastname, @p_prod_phone, @p_prod_Email, @p_prod_cuit, @p_prod_sueldo );
	end \\
  delimiter ;
  
  -- 
  
       drop procedure if exists sp_insert_proveedor;

 delimiter \\
create procedure sp_insert_proveedor
( inout p_Prov_Tipo int ,
 inout p_Prov_Email varchar (30) ,
 inout p_Prov_Name varchar(15),
 inout p_Prov_Phone varchar(20) ,
 inout p_Prov_Cuit varchar (13),
 inout p_Prov_Costo int )
   begin
  insert into proveedor ( Prov_Tipo, Prov_Email, Prov_Name, Prov_Phone, Prov_Cuit, Prov_Costo)
  values (@p_Prov_Tipo, @p_Prov_Email, @p_Prov_Name, @p_Prov_Phone, @p_Prov_Cuit, @p_Prov_Costo );
	end \\
  delimiter ;
  
  
 
       