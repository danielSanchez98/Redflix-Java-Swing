DROP DATABASE IF EXISTS redflix;
CREATE DATABASE redflix;
USE redflix;
create table if not exists director(
    id_director  int primary key auto_increment,
    nombre  varchar(20),
    apellido varchar(20),
    nacionalidad  varchar(40)
);
create table if not exists contenido(
	id_contenido int not null primary key auto_increment,
    tipo_contenido varchar(20) not null,
    titulo_contenido varchar(50) not null
);
create table if not exists pelicula(
	id_pelicula varchar(255) not null primary key,
    titulo varchar(50) not null,
    resumen varchar(255) not null,
    anio integer not null,    
    id_contenido int not null,
    id_director int not null,
    foreign key (id_director) references director(id_director) on delete cascade on update cascade,
    foreign key (id_contenido) references contenido(id_contenido) on delete cascade on update cascade
);
create table if not exists serie(
	id_serie varchar(255) not null primary key,
    titulo varchar(50) not null,
    temporadas int not null,
    episodios int not null,
    id_contenido int not null,
    foreign key (id_contenido) references contenido(id_contenido) on delete cascade on update cascade
);
create table if not exists usuario(
	alias varchar(50) not null primary key,
    nombre varchar(30) not null,
    apellido varchar(30) not null,
    email varchar(30) not null,
    celular varchar(20) not null,
    contrasena varchar(20) not null,
    fecha_nacimiento date not null
);
create table if not exists transmision(
	id_transmision int not null primary key auto_increment,
    alias_usuario varchar(50) not null,
    fecha_transmision datetime not null,
    id_contenido int not null,
    foreign key (id_contenido) references contenido(id_contenido) on delete cascade on update cascade,
    foreign key (alias_usuario) references usuario(alias) on delete cascade on update cascade
);
insert into director values (101, "Hayo","Miyazaki", "japones");
insert into director values (102, "Joss", "Whedon", "estadounidense");
insert into director values (103, "Christopher", "Nolan", "estadounidense");
insert into director values (104, "Bong", "Joon-ho", "coreano");
insert into director values (105, "Vincent", "Ward", "neozelandes");

insert into contenido values (1001, "pelicula", "Los Vengadores");
insert into contenido values (1002, "pelicula", "Interestelar");
insert into contenido values (1003, "pelicula", "El viaje de Chihiro");
insert into contenido values (1004, "pelicula", "Parasitos");
insert into contenido values (1005, "pelicula", "Mas alla de los sueños");
insert into contenido values (1006, "serie", "The walking dead");
insert into contenido values (1007, "serie", "Viaje a las estrellas: la serie original");
insert into contenido values (1008, "serie", "Glow");
insert into contenido values (1009, "serie", "La casa de papel");
insert into contenido values (1010, "serie", "Friends");
insert into contenido values (1011, "serie", "Arrow");
insert into contenido values (1012, "serie", "The big bang theory");
insert into contenido values (1013, "serie", "Vikingos");

insert into pelicula values ("9b35b0c2-0fc7-4c03-98a8-0f76c08b3368", "Los Vengadores", "pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark,
 Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.", 1990, 1001, 102);
insert into pelicula values ("ab1d3a7b-f2a7-42b2-a4b6-813c09d3d6c6", "Interestelar", "pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia
 de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.", 2014, 1002, 103);
insert into pelicula values ("6699f0ba-4356-4974-a578-f0c91222b232", "El viaje de Chihiro", "pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo
 mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.", 2001, 1003, 101);
insert into pelicula values ("a9a01fbe-88b6-42e4-8422-e5e8de90b156", "Parasitos", "pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.", 2019, 1004, 104);
insert into pelicula values ("a3f200ef-6ea2-4712-966c-5e05012ae6c3", "Mas alla de los sueños", "pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas
 allá para recuperarla.", 1998, 1005, 105);

insert into serie values ("45ac3c2f-d9b9-4d70-8d56-aaf13cb207b7", "The walking dead", 11, 153, 1006);
insert into serie values ("7969ceee-b91b-4b43-9cf9-9024c081cd65", "Viaje a las estrellas: la serie original", 3, 80, 1007);
insert into serie values ("7d50e0d4-ab9f-483f-9ac4-da182ea8c234", "Glow", 3, 30, 1008);
insert into serie values ("a39c50aa-0746-4ebb-8a31-f64535c8d292", "La casa de papel", 4, 31, 1009);
insert into serie values ("e0f4525f-42ff-49d5-a099-d317fcce0f2c", "Friends", 10, 236, 1010);
insert into serie values ("77733838-d968-474d-a66c-9e1aa375de86", "Arrow", 8, 170, 1011);
insert into serie values ("e12a08b8-0553-4fd2-881a-403674ea52c0", "The big bang theory", 12, 279, 1012);
insert into serie values ("8fe67946-1957-458a-9cdd-c2e9cce4c96f", "Vikingos", 6, 79, 1013);


insert into usuario values ("lucky", "Pedro", "Perez", "lucky@unal.edu", "1234567890", "123456789", "2000-01-05");
insert into usuario values ("malopez", "Maria", "Lopez", "malopez@unal.edu", "1234567890", "123456789", "2000-02-15");
insert into usuario values ("diva", "Ana", "Diaz", "diva@unal.edu", "1234567890", "123456789", "2000-04-05");
insert into usuario values ("dreamer", "Luis", "Rojas", "dreamer@unal.edu", "1234567890", "123456789", "2000-06-25");
insert into usuario values ("ninja", "Andres", "Cruz", "ninja@unal.edu", "1234567890", "123456789", "2000-08-13");
insert into usuario values ("neon", "Nelson", "Ruiz", "neon@unal.edu", "1234567890", "123456789", "2000-07-01");
insert into usuario values ("rose", "Claudia", "Mendez", "rose@unal.edu", "1234567890", "123456789", "2000-10-22");
insert into usuario values ("green", "Jorge", "Rodriguez", "green@unal.edu", "1234567890", "123456789", "2000-11-14");

insert into transmision values (1, "lucky", "2017-10-25 20:00:00", 1001);
insert into transmision values (2, "lucky", "2019-03-15 18:30:00", 1004);
insert into transmision values (3, "lucky", "2019-05-20 20:30:00", 1009);
insert into transmision values (4, "malopez", "2018-05-20 20:30:00", 1001);
insert into transmision values (5, "malopez", "2020-01-20 20:30:00", 1009);
insert into transmision values (6, "diva", "2019-05-20 20:30:00", 1002);
insert into transmision values (7, "diva", "2018-06-22 21:30:00", 1003);
insert into transmision values (8, "diva", "2020-03-17 15:30:20", 1006);
insert into transmision values (9, "dreamer", "2020-03-17 15:30:20", 1006);
insert into transmision values (10, "dreamer", "2020-04-10 18:30:20", 1007);
insert into transmision values (11, "ninja", "2020-02-17 20:30:20", 1008);
insert into transmision values (12, "ninja", "2020-02-20 16:30:20", 1009);
insert into transmision values (13, "ninja", "2020-03-27 18:30:20", 1011);
insert into transmision values (14, "rose", "2020-03-20 21:30:20", 1010);
insert into transmision values (15, "green", "2020-01-10 17:30:20", 1002);
insert into transmision values (16, "green", "2020-02-15 20:30:20", 1004);
insert into transmision values (17, "green", "2020-03-17 18:30:20", 1005);

update pelicula set anio=2012 where titulo="Los Vengadores";
update usuario set celular="3115678432" where alias="ninja";
delete from transmision where alias_usuario="green" and id_contenido=1004;

/*
select titulo_contenido from contenido order by titulo_contenido;
select titulo, resumen, anio from pelicula where anio>2000 
order by titulo;
select titulo from pelicula where id_director=105;
select titulo_contenido from contenido join transmision using (id_contenido) where transmision.alias_usuario="lucky" order by titulo_contenido;
select usuario.alias, usuario.nombre, usuario.apellido from usuario join transmision on usuario.alias = transmision.alias_usuario where id_contenido=1002 order by usuario.alias;
select count(id_pelicula) from pelicula where pelicula.anio>2000;

*/
