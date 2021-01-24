use e_7;

create table despachos 
(
	idDespacho int not null primary key identity(1,1),
	capacidad int
);

create table directores
(
	dni varchar(8) not null primary key,
	nomApels nvarchar,
	dniJefe varchar(8) foreign key references directores(dni),
	despachoID int foreign key references despachos(idDespacho) on delete cascade
);