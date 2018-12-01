INSERT INTO ROL (ID_ROL, DESCRIPCION) VALUES (1, 'Administrador');
INSERT INTO ROL (ID_ROL, DESCRIPCION) VALUES (2, 'Supervisor');
INSERT INTO ROL (ID_ROL, DESCRIPCION) VALUES (3, 'Representante');

-- USUARIO
INSERT INTO USUARIO
	(NOMBRE, NOMBRE_USUARIO, CLAVE, ID_USUARIO_CREADOR, ID_ROL)
VALUES
	('Jairis Rosario', 'jrosario', '1234', 1, 1);

INSERT INTO USUARIO
	(NOMBRE, NOMBRE_USUARIO, CLAVE, ID_USUARIO_CREADOR, ID_ROL)
VALUES
	('Pablo primero', 'pprimero', '1234', 1, 2);

INSERT INTO USUARIO
	(NOMBRE, NOMBRE_USUARIO, CLAVE, ID_USUARIO_CREADOR, ID_ROL)
VALUES
	('Pablo segundo', 'psegundo', '1234', 1, 2);
	
INSERT INTO USUARIO
	(NOMBRE, NOMBRE_USUARIO, CLAVE, ID_SUPERVISOR, ID_USUARIO_CREADOR, ID_ROL)
VALUES
	('Pablo tercero', 'ptercero', '1234', 2, 1, 3);

INSERT INTO USUARIO
	(NOMBRE, NOMBRE_USUARIO, CLAVE, ID_SUPERVISOR, ID_USUARIO_CREADOR, ID_ROL)
VALUES
	('Pablo cuarto', 'pcuarto', '1234', 2, 1, 3);

INSERT INTO USUARIO
	(NOMBRE, NOMBRE_USUARIO, CLAVE, ID_SUPERVISOR, ID_USUARIO_CREADOR, ID_ROL)
VALUES
	('Pablo quinto', 'pquinto', '1234', 3, 1, 3);
	
-- ESTADO_EVALUACION
INSERT INTO ESTADO_EVALUACION (ID_ESTADO_EVALUACION, DESCRIPCION) VALUES (1, 'Pendiente');
INSERT INTO ESTADO_EVALUACION (ID_ESTADO_EVALUACION, DESCRIPCION) VALUES (2, 'Reclamada');
INSERT INTO ESTADO_EVALUACION (ID_ESTADO_EVALUACION, DESCRIPCION) VALUES (3, 'Finalizada');

-- PLANTILLA
INSERT INTO PLANTILLA (FECHA_CREADA, ID_USUARIO_CREADOR) VALUES ('2013-07-02', 1);

-- PUNTO_EVALUACION
INSERT INTO PUNTO_EVALUACION (ID_PUNTO_EVALUACION, ID_PLANTILLA, DESCRIPCION) VALUES (1,1, 'El representante utiliza protocolo de bienvenida');
INSERT INTO PUNTO_EVALUACION (ID_PUNTO_EVALUACION, ID_PLANTILLA, DESCRIPCION) VALUES (2,1, 'El representante muestra empat�a durante la conversaci�n');
INSERT INTO PUNTO_EVALUACION (ID_PUNTO_EVALUACION, ID_PLANTILLA, DESCRIPCION) VALUES (3,1, 'El representante identifica la necesidad del cliente');

-- EVALUACION
INSERT INTO EVALUACION (FECHA_CREADA, ID_ESTADO_EVALUACION, ID_PLANTILLA, ID_REPRESENTANTE, ID_SUPERVISOR) VALUES ('2013-04-07', 1, 1, 4, 2);

-- RESPUESTA
INSERT INTO RESPUESTA (ID_EVALUACION, ID_PLANTILLA, ID_PUNTO_EVALUACION, CUMPLE_PUNTO) VALUES (1, 1, 1, 1);
INSERT INTO RESPUESTA (ID_EVALUACION, ID_PLANTILLA, ID_PUNTO_EVALUACION, CUMPLE_PUNTO) VALUES (1, 1, 2, 0);
INSERT INTO RESPUESTA (ID_EVALUACION, ID_PLANTILLA, ID_PUNTO_EVALUACION, CUMPLE_PUNTO) VALUES (1, 1, 3, 1);

