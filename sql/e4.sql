use e4;

create table departamentos 
(	
	idDepartamentos int primary key not null identity(1,1),
	nombre varchar (100),
	presupuesto int
);

create table empleados
(
	dni varchar(8) not null primary key,
	nombre varchar(100),
	apellidos varchar,
	departamentosID int foreign key references departamentos(idDepartamentos) on delete cascade
);