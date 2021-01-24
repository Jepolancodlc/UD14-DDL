use e10;

create table cajeros
(
	idCajero int identity(1,1) not null primary key,
	nomApels nvarchar
);

create table productos
(
	idProducto int identity(1,1) not null primary key,
	nombre nvarchar(100),
	precio int
);

create table maquinasRegistradas
(
	idMaquina int identity(1,1) not null primary key,
	piso int
);

create table venta 
(
	cajeroID int foreign key references cajeros(idCajero) on delete cascade,
	maquinaID int foreign key references maquinasRegistradas(idMaquina) on delete cascade,
	productoID int foreign key references productos(idProducto) on delete cascade,
	primary key (cajeroID, maquinaID, productoID)
);


