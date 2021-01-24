use e2;

create table editorial
(
	idEditorial smallint not null primary key identity (1,1),
	nombre varchar(60),
	direccion varchar(60),
	telefono varchar(15)
);

create table libro
(
	idLibro int not null identity(1,1) primary key,
	titulo varchar(60),
	idioma varchar (15),
	formato varchar (15),
	editorialID smallint foreign key references editorial(idEditorial) on delete set null
);

create table tema
(
	idTema smallint not null primary key identity (1,1),
	nombre varchar(40)
);

create table autor
(
	idAutor int  not null primary key identity (1,1),
	nombre varchar(60)
);

create table ejemplar
(
	idEjemplar int not null identity(1,1) primary key,
	libroID int foreign key references libro(idLibro) on delete cascade,
	numOrden smallint not null,
	edicion smallint,
	ubicacion varchar(15),
	categoria char,
);

create table socio
(
	idSocio int not null identity(1,1) primary key,
	nombre varchar(60),
	direccion varchar(60),
	telefono varchar(15),
	categoria char
);

create table prestamo
(
	socioID int foreign key references socio(idSocio) on delete cascade,
	ejemplarID int foreign key references ejemplar(idEjemplar) on delete cascade,
	numOrden smallint,
	fechaPrestamo date,
	fechaDevolucion date,
	notas int
);

create table trata_sobre
(
	libroID int foreign key references libro(idLibro) on delete cascade,
	temaID smallint foreign key references tema(idTema) on delete cascade,
);

create table escrito_por
(
	libroID int foreign key references libro(idLibro) on delete cascade,
	autorID int foreign key references autor(idAutor) on delete cascade,

);