DROP TABLE if exists cliente cascade;
CREATE TABLE cliente (
    identificacion character(12) NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(100),
    ciudad character varying(50)
);



--drop sequence credito_seq cascade;
CREATE SEQUENCE credito_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;




--SELECT pg_catalog.setval('credito_seq', 6, true);



DROP TABLE  if exists  credito cascade;
CREATE TABLE credito (
    numero_credito integer DEFAULT nextval('credito_seq'::regclass) NOT NULL,
    codigo_sucursal integer NOT NULL,
    importe double precision
);
--------------------------------------------------------------------
INSERT INTO  credito (codigo_sucursal, importe)  VALUES (1, 500);

-------------------------------------------------------------------


DROP TABLE  if exists  creditos_cliente cascade;
CREATE TABLE creditos_cliente (
    identificacion character varying NOT NULL,
    numero_credito integer NOT NULL
);

--drop sequence cuenta_seq cascade;
CREATE SEQUENCE cuenta_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


DROP TABLE if exists  cuenta cascade;
CREATE TABLE cuenta (
    numero_cuenta integer  DEFAULT nextval('cuenta_seq'::regclass) NOT NULL,
    codigo_sucursal integer NOT NULL,
    saldo double precision NOT NULL
);


DROP TABLE if exists  cuentas_cliente cascade;
CREATE TABLE cuentas_cliente (
    identificacion character varying(14) NOT NULL,
    numero_cuenta integer NOT NULL
);



DROP TABLE if exists  sucursal cascade;
CREATE TABLE sucursal (
    codigo_sucursal integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ciudad character varying(50),
    activos double precision
);




INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('12345678    ', 'Carlos Martinez', 'Calle 100 No. 14-12', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('10045757    ', 'Andres Perez', 'Calle 200 No. 5-12', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('50045117    ', 'Maria Montes', 'Calle 300 No. 14-10', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('70045657    ', 'Carlos Izquierdo', 'Calle 5 No. 14-120', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('12345400    ', 'Paulina Gomez', 'Calle 12 No. 5-12', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('43145667    ', 'Carlos Gonzales', 'Calle 11 No. 14-05', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('57245667    ', 'Carlos Dominguez', 'Calle 17 No. 14-07', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('43145677    ', 'Carlos Gonzales', 'Calle 11 No. 14-05', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('57245997    ', 'Carlos Dominguez', 'Calle 17 No. 14-07', 'Cali');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('24681012    ', 'Antonio Ramirez', 'Calle 7 No. 5-07', 'Medellin');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('77775555    ', 'Carlos Giraldo', 'Calle 70 No. 5-27', 'Medellin');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('99995555    ', 'Claudia  Paz', 'Cra 100 No. 5-27', 'Medellin');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('333344444   ', 'Juan David Paz', 'Calle 7 No. 5-07', 'Bogota');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('555557777   ', 'Juan Carlos Jaramillo', 'Calle 70 No. 5-27', 'Bogota');
INSERT INTO cliente (identificacion, nombre, direccion, ciudad) VALUES ('11112222    ', 'Edgar Fernandez', 'Cra 100 No. 5-27', 'Bogot�');




INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (100, 1, 7000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (101, 1, 7000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (102, 2, 7000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (103, 2, 7000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (104, 3, 7000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (105, 3, 7000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (106, 4, 9000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (107, 4, 4000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (108, 4, 8000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (109, 5, 77000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (110, 5, 14000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (111, 6, 1000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (112, 6, 5000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (113, 7, 2000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (114, 8, 4000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (115, 9, 3000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (200, 9, 5000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (201, 7, 12500);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (301, 7, 5000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (401, 7, 5000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (501, 7, 950000);
INSERT INTO credito (numero_credito, codigo_sucursal, importe) VALUES (701, 7, 77777);




INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('12345678', 100);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('10045757', 101);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('50045117', 102);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('70045657', 103);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('12345400', 104);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('43145667', 105);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('12345678', 108);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('24681012', 110);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('77775555', 111);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('99995555', 112);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('333344444', 113);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('555557777', 114);
INSERT INTO creditos_cliente (identificacion, numero_credito) VALUES ('11112222', 115);


INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1000, 1, 100);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1001, 2, 200);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1002, 3, 300);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1003, 4, 400);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1004, 5, 500);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1005, 6, 700);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1006, 7, 800);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1007, 8, 100);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1008, 9, 200);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1009, 7, 2500);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1010, 1, 100);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1011, 2, 300);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1012, 3, 700);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1013, 4, 900);
INSERT INTO cuenta (numero_cuenta, codigo_sucursal, saldo) VALUES (1014, 5, 1800);




INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('12345678', 1000);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('10045757', 1001);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('50045117', 1002);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('70045657', 1003);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('12345400', 1004);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('50045117', 1005);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('70045657', 1006);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('12345400', 1007);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('43145677', 1008);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('77775555', 1009);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('57245997', 1010);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('99995555', 1011);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('333344444', 1012);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('555557777', 1013);
INSERT INTO cuentas_cliente (identificacion, numero_cuenta) VALUES ('11112222', 1014);




INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (1, 'Calle Quinta', 'Cali', 5000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (2, 'Carrera Primera', 'Cali', 5000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (3, 'Centro', 'Cali', 5000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (4, 'Parque Municipal', 'Bogota', 12000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (5, 'Carrera 100', 'Bogota', 12000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (6, 'Avenida Jimenez', 'Bogota', 5000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (7, 'Calle de las Palmas', 'Medellin', 14000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (8, 'Carrera 12', 'Medellin', 14000000);
INSERT INTO sucursal (codigo_sucursal, nombre, ciudad, activos) VALUES (9, 'Principal', 'Medellin', 5000000);




ALTER TABLE  cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (identificacion);


ALTER TABLE  credito
    ADD CONSTRAINT credito_pk PRIMARY KEY (numero_credito);




ALTER TABLE  creditos_cliente
    ADD CONSTRAINT creditos_cliente_pk PRIMARY KEY (numero_credito, identificacion);




ALTER TABLE  cuenta
    ADD CONSTRAINT cuenta_pk PRIMARY KEY (numero_cuenta);




ALTER TABLE  cuentas_cliente
    ADD CONSTRAINT cuentas_cliente_pk PRIMARY KEY (identificacion, numero_cuenta);



ALTER TABLE  sucursal
    ADD CONSTRAINT sucursal_pk PRIMARY KEY (codigo_sucursal);




ALTER TABLE  creditos_cliente
    ADD CONSTRAINT crditos_cliente_fk1 FOREIGN KEY (identificacion) REFERENCES cliente(identificacion);




ALTER TABLE  creditos_cliente
    ADD CONSTRAINT crditos_cliente_fk2 FOREIGN KEY (numero_credito) REFERENCES credito(numero_credito);




ALTER TABLE  cuentas_cliente
    ADD CONSTRAINT cuentas_cliente_fk1 FOREIGN KEY (identificacion) REFERENCES cliente(identificacion);




ALTER TABLE  cuentas_cliente
    ADD CONSTRAINT cuentas_cliente_fk2 FOREIGN KEY (numero_cuenta) REFERENCES cuenta(numero_cuenta);




ALTER TABLE  cuenta
    ADD CONSTRAINT sucursal_cuenta_fk FOREIGN KEY (codigo_sucursal) REFERENCES sucursal(codigo_sucursal);




ALTER TABLE  credito
    ADD CONSTRAINT sucursal_fk FOREIGN KEY (codigo_sucursal) REFERENCES sucursal(codigo_sucursal);






