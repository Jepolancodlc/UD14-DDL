use e3;

create table fabricantes
(
	idFabricantes int primary key identity (1,1) not null,
	nombre nvarchar(100)
);

create table articulos 
(
	idArticulos int primary key identity (1,1) not null,
	nombre nvarchar(100),
	precio int,
	fabricanteID int foreign key references fabricantes(idFabricantes) on delete cascade
);

