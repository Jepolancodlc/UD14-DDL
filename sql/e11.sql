use e11;

create table facultad
(
	idFacultad int primary key not null,
	nombre nvarchar(100)
);

create table equipos
(
	numSerie char(4) primary key not null,
	nombre nvarchar(100),
	facultadID int foreign key references facultad(idFacultad) on delete cascade
);

create table investigadores
(
	dni varchar(8) primary key not null,
	nomApels nvarchar,
	facultadID int foreign key references facultad(idFacultad) on delete cascade
);

create table reserva
(
	 investigadorDNI varchar(8) foreign key references investigadores(dni) on delete no action,
	 equipoNumSerie char(4) foreign key references equipos(numSerie) on delete no action,
	 comienzo datetime, 
	 fin datetime,
	 primary key(investigadorDNI, equipoNumSerie)
);
