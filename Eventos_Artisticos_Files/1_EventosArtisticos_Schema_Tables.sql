-- Primero, se arma panel de creacion, borrado y uso del Schema

drop schema if exists Eventos_Artisticos;
create schema if not exists Eventos_Artisticos; 
use Eventos_Artisticos;

-- Segundo, Se crean las tablas correspondientes

CREATE TABLE if not exists Productor (
  Id_Prod int NOT NULL auto_increment,
  Prod_Name varchar(20) NOT NULL,
  Prod_LastName varchar(20) NOT NULL,
  Prod_Phone varchar(20) NOT NULL,
  Prod_Email varchar(30) NOT NULL,
  Prod_Cuit varchar(13) not null,
  Prod_Sueldo int not null,
  PRIMARY KEY (Id_Prod) );
  
   CREATE TABLE if not exists Espacio (
  Id_Esp int NOT NULL auto_increment,
  Esp_Adress varchar(30) NOT NULL,
  Esp_Email varchar(30) NOT NULL,
  Esp_Name varchar(20) NOT NULL,
  Esp_Capacity int NOT NULL,
  Esp_Phone varchar(20) NOT NULL,
  Esp_Alquiler int not null,
  PRIMARY KEY (Id_Esp)); 
  
  CREATE TABLE if not exists Artista (
  Id_Art int NOT NULL auto_increment,
  Art_Email varchar(30) NOT NULL,
  Art_Name varchar(20) NOT NULL,
  Art_Cuit varchar(13) NOT NULL,
  Art_Phone varchar(20) NOT NULL,
  Art_Sueldo int not null,
  PRIMARY KEY (Id_Art) );
  
  CREATE TABLE if not exists Empleado (
  Id_Emp int NOT NULL auto_increment,
  Emp_Espec int NOT NULL,
  Emp_Email varchar(30) NOT NULL,
  Emp_Name varchar(20) NOT NULL,
  Emp_Lastname varchar(20) NOT NULL,
  Emp_Phone varchar(20) NOT NULL,
  Emp_Cuit varchar(13) NOT NULL,
  Emp_Sueldo int not null,
    PRIMARY KEY (Id_Emp) 
  );
  
  CREATE TABLE if not exists Proveedor (
  Id_Prov int NOT NULL auto_increment,
  Prov_Tipo int NOT NULL,
  Prov_Email varchar(30) NOT NULL,
  Prov_Name varchar(15) NOT NULL,
  Prov_Phone varchar(20) NOT NULL,
  Prov_Cuit varchar(13) NOT NULL,
  Prov_Costo int not null,
    PRIMARY KEY (Id_Prov) 
  );
  
  CREATE TABLE if not exists Evento (
  Id_Event int NOT NULL auto_increment,
  Event_Date date NOT NULL,
  Event_Name varchar(15) NOT NULL,
  Event_Prod INT NOT NULL,
  Event_Esp int not null,
  Event_Art int NOT NULL,
  Event_Emp int Not null,
  Event_Prov int Not null,
  Event_Entrada int not null,
  PRIMARY KEY (Id_Event) );
  
  Create table if not exists Emp_Espec (
  Id_Emp_Espec int not null,
  Emp_Espec_Desc varchar (20) not null,
  primary key (Id_Emp_Espec));
  
  Create table if not exists Prov_Tipo (
  Id_Prov_Tipo int not null,
  Prov_Tipo_Desc varchar (20) not null,
  primary key (Id_Prov_Tipo));
  

 -- Tercero, se agregan las FK
 
 alter table Evento add 
FOREIGN KEY (Event_Prod) REFERENCES Productor (Id_Prod);
alter table Evento add
FOREIGN KEY (Event_Art) REFERENCES Artista (Id_Art);
alter table Evento add
FOREIGN KEY (Event_Emp) REFERENCES Empleado (Id_Emp);
alter table Evento add
FOREIGN KEY (Event_Prov) REFERENCES Proveedor (Id_Prov);
alter table Evento add
FOREIGN KEY (Event_Esp) REFERENCES Espacio (Id_Esp);

alter table Empleado add
foreign key (Emp_Espec) references Emp_Espec (Id_Emp_Espec);
alter table Proveedor add
foreign key (Prov_Tipo) references Prov_Tipo (Id_Prov_Tipo);

  -- se crean las dos tablas de Log, para las tablas de Espacio y Productor

drop table if exists log_espacio;
create table if not exists log_espacio (
Id_log int auto_increment not null,
Id_Esp int NOT NULL ,
Esp_Adress varchar(30) NOT NULL,
Esp_Email varchar(30) NOT NULL,
Esp_Name varchar(20) NOT NULL,
Esp_Capacity int NOT NULL,
Esp_Phone varchar(20) NOT NULL,
Esp_Alquiler int not null,
NOMBRE_DE_ACCION VARCHAR(10) ,
NOMBRE_TABLA VARCHAR(50) ,
USUARIO VARCHAR(100) ,
FECHA_UPD_INS_DEL DATEtime,
PRIMARY KEY (ID_LOG));

drop table if exists log_productor;
create table if not exists log_productor (
id_log int auto_increment not null,
Id_Prod int NOT NULL ,
Prod_Name varchar(20) NOT NULL,
Prod_LastName varchar(20) NOT NULL,
Prod_Phone varchar(20) NOT NULL,
Prod_Email varchar(30) NOT NULL,
Prod_Cuit varchar(13) NOT NULL,
Prod_Sueldo int ,
NOMBRE_DE_ACCION VARCHAR(10) ,
NOMBRE_TABLA VARCHAR(50) ,
USUARIO VARCHAR(100) ,
FECHA_UPD_INS_DEL DATEtime,
PRIMARY KEY (ID_LOG));
