use e9;

create table cientificos
(
	dni varchar(8) primary key not null,
	nomApels nvarchar
);

create table proyecto
(
	idProyecto char(4) not null primary key,
	nombre nvarchar,
	horas int,
);

create table asignado_a
(
	cientificoID varchar(8) foreign key references cientificos(dni) on delete cascade,
	proyectoID char(4) foreign key references proyecto(idProyecto) on delete cascade,
	primary key (cientificoID, proyectoID)
);