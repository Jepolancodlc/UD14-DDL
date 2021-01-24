use e8;

create table piezas
(
	idPieza int identity (1,1) not null primary key,
	nombre nvarchar(100)
);

create table proveedores
(
	nombre nvarchar(100),
	idProveedor char(4) not null primary key
);

create table suministra
(
	codigoPieza int foreign key references piezas(idPieza) on delete cascade,
	proveedorID char(4) foreign key references proveedores(idProveedor)on delete cascade,
	precio int,
	primary key(codigoPieza, proveedorID)
);