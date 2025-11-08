--- BASE DE DATOS ACADEMICA
--- Gestión de Bases de Datos
--- Autores: xx

-- Para conectarse en la sala usar: 
----- psql -U codigo  -d codigo -h pgsl2.eisc.univalle.edu.co
-------------------------------------------------

DROP TABLE IF EXISTS profesor CASCADE;
CREATE TABLE profesor(

  profesor_id VARCHAR(20) primary key NOT NULL,
  nombre_profesor VARCHAR(30),
  categoria VARCHAR(20) NOT NULL,
  salario integer
  );

--------------------------------------------------

DROP TABLE IF EXISTS asignatura CASCADE;

CREATE TABLE asignatura(

  codigo_asignatura VARCHAR(12)  NOT NULL PRIMARY KEY,
  nombre_a VARCHAR(30) NOT NULL,
  creditos integer NOT NULL);


---------------------------------------------------
DROP TABLE IF EXISTS programacion CASCADE;
CREATE TABLE programacion(

  codigo_asignatura VARCHAR(20) NOT NULL ,
  semestre VARCHAR(12),
  profesor_id VARCHAR(20) NOT NULL,
  grupo VARCHAR(5) NOT NULL,
  salon VARCHAR (20),
  hora VARCHAR (10),

  PRIMARY KEY (codigo_asignatura, profesor_id, semestre, grupo),
  FOREIGN KEY(codigo_asignatura) REFERENCES asignatura(codigo_asignatura),
  FOREIGN KEY (profesor_id) REFERENCES profesor(profesor_id) 
);
------------------------------------------------------

DROP TABLE IF EXISTS estudiante CASCADE;
CREATE TABLE estudiante(

   codigo_estudiante VARCHAR(20) NOT NULL PRIMARY KEY,
   nombre VARCHAR (100)

);

------------------------------------------------------
DROP TABLE IF EXISTS matricula CASCADE;
CREATE TABLE matricula(
  codigo_asignatura VARCHAR(20) NOT NULL ,
  codigo_estudiante VARCHAR(20) NOT NULL,
  semestre VARCHAR(12),  
  grupo VARCHAR(5) NOT NULL,
  nota DOUBLE PRECISION,

  PRIMARY KEY (codigo_asignatura, codigo_estudiante, semestre, grupo),
  FOREIGN KEY(codigo_asignatura) REFERENCES asignatura(codigo_asignatura),
  FOREIGN KEY (codigo_estudiante) REFERENCES estudiante(codigo_estudiante) 


);



------------------------- Insertando Datos en las tablas.-------------------------

INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('1231456', 'Diego Portello');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('7891000', 'Pablo Rosas');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('2468100', 'Ana Maria Dominguez');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('1357999', 'Luis Perez Perez');


INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0210888', 'Juan Perez');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0210777', 'Juan Ruiz');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0210555', 'Sofia Charet');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0210111', 'Luisa Paz');


INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0325144', 'Fernando Paz');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0325145', 'Mery Diaz');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0325146', 'Sofia Portilla');
INSERT INTO estudiante (codigo_estudiante, nombre) VALUES ('0325147', 'Ana de los Angeles Ruiz');

----------------------------------------------------------------------------------------------------------


INSERT INTO profesor VALUES('114', 'Carlos Paz','Auxiliar',800000);
INSERT INTO profesor VALUES('115','Ana Henao H.', 'Asistente',700000);
INSERT INTO profesor VALUES('116','Guillermo Memo', 'Asociado',900000);
INSERT INTO profesor VALUES('117', 'Sofia Martinez M', 'Titular',1500000);
INSERT INTO profesor VALUES('118', 'Andres Respeto', 'Auxiliar',800000);
INSERT INTO profesor VALUES('119', 'Marcos Morales', 'Titular',1500000);
INSERT INTO profesor VALUES('120', 'Andres Maurico Coopers', 'Auxiliar',800000);


INSERT INTO asignatura VALUES('750001M','Calculo 1',4);
INSERT INTO asignatura VALUES('750083M','Calculo 2',3);
INSERT INTO asignatura VALUES('750056M','Algoritma',2);
INSERT INTO asignatura VALUES('780051M','Base Datos 1',4);
INSERT INTO asignatura VALUES('710083M','Qumica I',3);
INSERT INTO asignatura VALUES('720056M','Redes de computadores',2);
INSERT INTO asignatura VALUES('730051M','Física 1',4);
INSERT INTO asignatura VALUES('770000M','Algebra Lineal',2);
INSERT INTO asignatura VALUES('770012M','Ecuaciones diferenciales',4);


---------------------------------------------------------------------------------------------------
INSERT INTO programacion VALUES('750001M','2017-1','114', 'g1');
INSERT INTO programacion VALUES('750001M','2017-1','115', 'g2');
INSERT INTO programacion VALUES('770012M','2017-1','116', 'g3');
INSERT INTO programacion VALUES('750001M','2017-1','117', 'g4');
INSERT INTO programacion VALUES('720056M','2017-1','118', 'g5');
INSERT INTO programacion VALUES('720056M','2017-1','119', 'g6');
INSERT INTO programacion VALUES('730051M','2017-1','120', 'g7');
INSERT INTO programacion VALUES('710083M','2017-1','114', 'g2');
INSERT INTO programacion VALUES('710083M','2017-1','115', 'g3');
INSERT INTO programacion VALUES('770000M','2017-1','116', 'g4');
INSERT INTO programacion VALUES('750056M','2017-1','117', 'g3');
INSERT INTO programacion VALUES('750056M','2017-1','118', 'g4');
INSERT INTO programacion VALUES('750083M','2017-1','119', 'g1');
INSERT INTO programacion VALUES('750083M','2017-1','120', 'g2');
INSERT INTO programacion VALUES('730051M','2017-1','118', 'g4');
INSERT INTO programacion VALUES('730051M','2017-1','119', 'g3');
INSERT INTO programacion VALUES('730051M','2017-1','120', 'g3');
INSERT INTO programacion VALUES('770000M','2017-1','114', 'g2');
INSERT INTO programacion VALUES('770012M','2017-1','115', 'g3');

INSERT INTO programacion VALUES('750001M','2017-2','114', 'g1');
INSERT INTO programacion VALUES('750001M','2017-2','115', 'g2');
INSERT INTO programacion VALUES('770012M','2017-2','116', 'g3');
INSERT INTO programacion VALUES('750001M','2017-2','117', 'g4');
INSERT INTO programacion VALUES('720056M','2017-2','118', 'g5');
INSERT INTO programacion VALUES('720056M','2017-2','119', 'g6');
INSERT INTO programacion VALUES('730051M','2017-2','120', 'g7');
INSERT INTO programacion VALUES('710083M','2017-2','114', 'g2');
INSERT INTO programacion VALUES('710083M','2017-2','115', 'g3');
INSERT INTO programacion VALUES('770000M','2017-2','116', 'g4');
INSERT INTO programacion VALUES('750056M','2017-2','117', 'g3');
INSERT INTO programacion VALUES('750056M','2017-2','118', 'g4');
INSERT INTO programacion VALUES('750083M','2017-2','119', 'g1');
INSERT INTO programacion VALUES('750083M','2017-2','120', 'g2');
INSERT INTO programacion VALUES('730051M','2017-2','118', 'g4');
INSERT INTO programacion VALUES('730051M','2017-2','119', 'g3');
INSERT INTO programacion VALUES('730051M','2017-2','120', 'g3');
INSERT INTO programacion VALUES('770000M','2017-2','114', 'g2');
INSERT INTO programacion VALUES('770012M','2017-2','115', 'g3');

INSERT INTO programacion VALUES('750001M','2016-2','114', 'g1');
INSERT INTO programacion VALUES('750001M','2016-2','115', 'g2');
INSERT INTO programacion VALUES('770012M','2016-2','116', 'g3');
INSERT INTO programacion VALUES('750001M','2016-2','117', 'g4');
INSERT INTO programacion VALUES('720056M','2016-2','118', 'g5');
INSERT INTO programacion VALUES('720056M','2016-2','119', 'g6');
INSERT INTO programacion VALUES('730051M','2016-2','120', 'g7');
INSERT INTO programacion VALUES('710083M','2016-2','114', 'g2');
INSERT INTO programacion VALUES('710083M','2016-2','115', 'g3');
INSERT INTO programacion VALUES('770000M','2016-2','116', 'g4');
INSERT INTO programacion VALUES('750056M','2016-2','117', 'g3');
INSERT INTO programacion VALUES('750056M','2016-2','118', 'g4');
INSERT INTO programacion VALUES('750083M','2016-2','119', 'g1');
INSERT INTO programacion VALUES('750083M','2016-2','120', 'g2');
INSERT INTO programacion VALUES('730051M','2016-2','118', 'g4');
INSERT INTO programacion VALUES('730051M','2016-2','119', 'g3');
INSERT INTO programacion VALUES('730051M','2016-2','120', 'g3');
INSERT INTO programacion VALUES('770000M','2016-2','114', 'g2');
INSERT INTO programacion VALUES('770012M','2016-2','115', 'g3');

------------------------------------------------------------------------------------------

INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('750001M', '1231456', '2023-I', '01', 4.0);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('750001M', '2468100', '2023-I', '01', 3.0);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('750001M', '1357999', '2023-I', '01', 4.1);

INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('750001M', '0210888', '2023-I', '01', 4.0);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('750001M', '0210777', '2023-I', '01', 4.3);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('750001M', '0210555', '2023-I', '01', 4.4);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('750001M', '0210111', '2023-I', '01', 4.5);




INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('770012M', '1231456', '2023-I', '01', 4.6);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('770012M', '2468100', '2023-I', '01', 4.7);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('770012M', '1357999', '2023-I', '01', 4.8);

INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('770012M', '0210888', '2023-I', '01', 4.1);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('770012M', '0210777', '2023-I', '01', 4.2);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('770012M', '0210555', '2023-I', '01', 4.4);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('770012M', '0210111', '2023-I', '01', 4.3);




INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('730051M', '1231456', '2023-I', '01', 3.6);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('730051M', '2468100', '2023-I', '01', 3.7);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('730051M', '1357999', '2023-I', '01', 8.8);

INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('730051M', '0210888', '2023-I', '01', 3.1);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('730051M', '0210777', '2023-I', '01', 3.2);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('730051M', '0210555', '2023-I', '01', 3.4);
INSERT INTO matricula (codigo_asignatura, codigo_estudiante , semestre, grupo, nota) VALUES ('730051M', '0210111', '2023-I', '01', 3.3);




