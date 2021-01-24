use e12;

create table profesores
(
	dniProfesor varchar(8) primary key not null, 
	nombre varchar(30),
	apellido1 varchar(60), apellido2 varchar (60),
	direccion varchar,
	titulo varchar,
	gana int not null
);

create table cursos
(
	codCurso int primary key not null,
	nombreCurso varchar (50) unique,
	profesorDNI varchar(8) foreign key references profesores(dniProfesor) on delete cascade,
	maxAlumnos int,
	fechaInicio datetime,
	
	fechaFinal datetime,
	numHoras int not null default 0,
);

create table alumnos
(
	dniAlumno varchar (8) primary key not null,
	nombre varchar (30),
	apellido1 varchar(60), apellido2 varchar (60),
	direccion varchar,
	sexo char check( sexo in ('M', 'H')),
	fechaNacimiento datetime,
	cursoCOD int foreign key references cursos(codCurso) on delete cascade
);