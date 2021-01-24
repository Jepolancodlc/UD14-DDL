use e5;

create table almacenes
(
	idAlmacenes int not null primary key identity(1,1),
	lugar varchar(100),
	capacidad int
);

create table cajas
(
	numReferencia char(5) not null primary key,
	contenido varchar(100),
	valor int,
	almacenID int foreign key references almacenes(idAlmacenes) on delete cascade
);