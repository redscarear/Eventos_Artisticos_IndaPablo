use eventos_artisticos;



-- se crearan dos triggers para cada tabla 

-- el siguiente es un trigger que guardara datos luego del Insert en la tabla Espacio

drop trigger if exists trg_espacio;
delimiter //
create trigger trg_espacio after insert on espacio
FOR EACH ROW 
BEGIN
insert into log_espacio (Id_Esp, Esp_Adress,Esp_Email,Esp_Name, Esp_Capacity, 
Esp_Phone, Esp_Alquiler,  NOMBRE_DE_ACCION,
NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (new.id_esp, new.Esp_Adress, new.Esp_Email, new.Esp_Name, new.Esp_Capacity, 
new.Esp_Phone, new.Esp_Alquiler, 'update',
'espacio', CURRENT_USER(), NOW());
end //
delimiter ;

-- se inserta un registro, y luego se puede listar la informacion tanto de Espacio como de su log

insert into espacio (Esp_Adress, Esp_email, esp_name, esp_capacity, esp_phone, esp_alquiler)
values ('corrientes 150', 'Magarelo@pepe.com', 'Taxonomi', '15000', '29246354', 150000);

select * from espacio;
select * from log_espacio;

-- en el siguiente se guardara en LOG los datos anteriores al Delete en la tabla Espacio

drop trigger if exists trg_del_espacio;
delimiter //
create trigger trg_del_espacio before delete on espacio
FOR EACH ROW 
BEGIN
insert into log_espacio (Id_Esp, Esp_Adress,Esp_Email,Esp_Name, Esp_Capacity, Esp_Phone,  
esp_alquiler ,NOMBRE_DE_ACCION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (old.id_esp, old.Esp_Adress, old.Esp_Email, old.Esp_Name, old.Esp_Capacity, old.Esp_Phone, 
old.Esp_alquiler, 'delete', 'espacio', CURRENT_USER(), NOW());
end //
delimiter ;

delete from espacio where id_esp = 4;

select * from espacio;
select * from log_espacio;

-- El siguiente es un trigger que guardara datos en su log antes de Update en la tabla Productor

drop trigger if exists trg_upd_productor;

delimiter //
create trigger trg_upd_productor before update on productor
FOR EACH ROW 
BEGIN
insert into log_productor 
(Id_Prod, Prod_Name, Prod_LastName, Prod_Phone, Prod_Email, 
Prod_Cuit, Prod_Sueldo , NOMBRE_DE_ACCION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (old.Id_Prod, old.Prod_Name, old.Prod_LastName, old.Prod_Phone, old.Prod_Email, 
old.Prod_Cuit, old.Prod_Sueldo, 'update', 'productor', CURRENT_USER(), NOW());
end //
delimiter ;

select * from productor;
update productor set prod_phone = 115383662 where id_prod = 2;
select * from log_productor;

-- el siguiente trigger guardara los datos en log luego de insertar en la tabla productor

drop trigger if exists trg_ins_productor;
delimiter //
create trigger trg_ins_productor after insert on productor
FOR EACH ROW 
BEGIN
insert into log_productor 
(Id_Prod, Prod_Name, Prod_LastName, Prod_Phone, Prod_Email, 
Prod_Cuit, prod_Sueldo, NOMBRE_DE_ACCION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (new.Id_Prod, new.Prod_Name, new.Prod_LastName, new.Prod_Phone, new.Prod_Email, 
new.Prod_Cuit, new.prod_sueldo, 'insert', 'productor', CURRENT_USER(), NOW());
end //
delimiter ;

insert into productor ( Prod_Name, Prod_LastName, Prod_Phone, Prod_Email, Prod_Cuit, Prod_Sueldo)
values ('Chengo' , 'Gonzales', '220536254', 'chengo@rosario.pk', '254021685', 42000);
select * from productor;
select * from log_productor;
