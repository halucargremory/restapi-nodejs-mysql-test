CREATE DATABASE IF NOT EXISTS Procomin_Epos;

CREATE TABLE Procomin_Epos.Personal (
    ID_EMPLEADO INT (10) AUTO_INCREMENT PRIMARY KEY,
    COMEDOR VARCHAR(255),
    NOMBRE VARCHAR(255),
    TELEFONO VARCHAR(15),
    USUARIO VARCHAR(50),
    CONTRASEÑA VARCHAR(50),
    FECHA_BAJA DATE
);

describe personal;

INSERT INTO Procomin_Epos.Personal (COMEDOR, PERSONAL, NOMBRE, TELEFONO, USUARIO, CONTRASEÑA)
VALUES 
('VOLKSWAGEN', 'CAJERO1', 'Amairani Rojas Palmeros', '2225135351', 'C1 Amairani R.', '123111'),
('VOLKSWAGEN', 'CAJERO2', 'Antony Avilés', '2212235493', 'C2 Antonio A.', '123222'),
('ADIENT TLAXCALA', 'CAJERO1', 'Esmeralda Hernández', '2462613669', 'C1 ESMERALDA', '123111'),
('ADIENT TLAXCALA', 'CAJERO2', 'Santa de la Cruz', '2461287515', 'C2 DE LA CRUZ', '123222'),
('ADIENT TLAXCALA', 'CAJERO3', 'Ana Karen Jiménez', '2411046628', 'C3 ANA K.', '123333'),
('SUMITOMO', 'CAJERO1', 'Gilberta Rojas Guzmán', '2461968310', 'C1 GILBERTA', '123111'),
('SUMITOMO', 'CAJERO2', 'Elizabet Meza Meza', '2462639246', 'C2 ELIZABET', '123222'),
('TORTERIA DEL CARMEN', 'CAJERO1', 'Araceli Trinidad Otero', '2212338633', 'C1 Araceli T.', '123111'),
('ADIENT FINSA', 'CAJERO1', 'Jovita Lara', '2212338227', 'C1 Jovita Lara', '123111'),
('ADIENT FINSA', 'CAJERO2', 'Beatriz Adriana ', '2462018623', 'C2 Beatriz A.', '123222'),
('ADIENT FINSA', 'CAJERO3', 'Victor Hernandez', '2212533401', 'C3 Victor H.', '123333'),
('ANDES PRIMARIA', 'CAJERO1', 'Damaris Abigail Berlanga García', '9622331286', 'C1 Damaris A.', '123111'),
('ANDES SECUNDARIA', 'CAJERO1', 'Joana Barranco Maximo', '2212556952', 'C1 Joana B.', '123111'),
('AUDI', 'CAJERO1', 'Jorge Cortes', '2211018998', 'C1 JORGE C.', '123111'),
('THYSEN 1', 'CAJERO1', 'Arcelia Bautista', '2271198287', 'C1 Arcelia B.', '123111'),
('THYSEN 2', 'CAJERO1', 'Francisca', '2214337209', 'C1 Francisca', '123111'),
('THYSEN 1', 'CAJERO2', 'Ana Laura', '2481025760', 'C2 Ana Laura', '123222'),
('PRICE SHOES', 'CAJERO1', 'Leticia Nava Vargas', '2215714910', 'C1 Leticia', '123111'),
('PEPSICO', 'CAJERO1', 'Brenda Perez Gallegos', '2214068360', 'C1 Brenda', '123111'),
('OXXO', 'CAJERO1', 'Diego Carrillo Alvarado', '2211987214', 'C1 Diego', '123111'),
('MAULEC', 'CAJERO1', 'Sari', '2227080106', 'C1 Sari', '123111'),
('GESTAMP 2', 'CAJERO1', 'Martha Silvia Cebada Aburto', '2222922866', 'C1 Martha', '123111'),
('GESTAMP 2', 'CAJERO2', 'Maricela Figueroa castro', '2224499659', 'C2 Maricela', '123222'),
('GESTAMP 1', 'CAJERO1', 'Matilde López', '2226076799', 'C1 Matilde', '123111'),
('GESTAMP 1', 'CAJERO3', 'Emmanuel Perez Cervantes', '2212277198', 'C3 Emmanuel', '123333'),
('CLG', 'CAJERO1', 'Marisol', '2225473432', 'C1 Marisol', '123111'),
('WALMART TEPOZPARK 2 (NAVE 1)', 'CAJERO1', 'Edwin Lopez', '5610427598', 'C1 Edwin L.', '649764'),
('WALMART JAMES WATTS', 'CAJERO1', 'Dolores Edith Soto Arroyo', '5537947459', 'C1 Dolores E.', '123111'),
('WALMART JAMES WATTS', 'CAJERO2', 'Josseline Amairany Bautista Hernandez', '5626354908', 'C3 Josselin A.', '123333'),
('WALMART JAMES WATTS', 'CAJERO3', 'Araceli Palacios Murillo.', '5541836295', 'C2 Araceli P.', '123222'),
('WALMART OBISPO', 'CAJERO1', 'Ma. Asunción Pérez Tovar', '5548086870', 'C1Asuncion P.', '123111'),
('WALMART OBISPO', 'CAJERO2', 'Maria Carmela Melo Fabián', '5624460059', 'C2 Maria C.', '123222'),
('WALMART OBISPO', 'CAJERO3', 'Stefanny Guadalupe González Mendoza', '5610808324', 'C3 Stefanny G.', '123333'),
('WALMART OBISPO', '', 'Alexander Hans Labastida Aguilar', '5641289309', 'C4 Alexander H.', '123444'),
('WALMART OBISPO', '', 'OLIVER KAZÚO SALMERÓN', '5549222709', 'C5 Oliver K.', '123555'),
('WALMART OBISPO', '', 'Alfredo Yañez', '', 'C6 Alfredo Y.', '123666');

//sintaxix en postman para un json
{
    "COMEDOR": "hola",
    "PERSONAL": "c3",
    "NOMBRE": "sistemas",
    "TELEFONO": 2227135096,
    "USUARIO": "c1",
    "CONTRASEÑA": 22536
}

