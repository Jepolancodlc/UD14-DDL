use e1;

create table estacion 
(
	idEstacion int NOT NULL primary key identity(1,1),
	latitud int,
	longitud int,
	altitud	int
);

create table muestra
(
	idMuestra int not null primary key identity(1,1),
	estacionID int foreign key references estacion(idEstacion) on delete cascade,
	fecha date,
	tempMinima int, tempMaxima int,
	precipitaciones int,
	humedadMin int, humedadMax int,
	velVientoMin int, velVientoMax int,
	
);
