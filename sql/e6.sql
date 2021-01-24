use e6;

create table peliculas
(
	idPelicula int not null primary key identity(1,1),
	nombre varchar(100),
	calificacionEdad int
);

create table salas
(
	idSala int identity(1,1) not null primary key,
	nombre nvarchar(100),
	peliculaID int foreign key references peliculas(idPelicula) on delete cascade
);

