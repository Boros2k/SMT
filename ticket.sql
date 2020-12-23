
DROP DATABASE IF EXISTS ticket;

CREATE DATABASE ticket;

USE ticket;

CREATE TABLE `tecnico` (
 `id_tecnico` INT(11) NOT NULL AUTO_INCREMENT,
 `rol` INT(11) NOT NULL,
 `name` VARCHAR(100) NOT NULL,
 `pass` VARCHAR(100) NOT NULL,
 PRIMARY KEY (`id_tecnico`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `tecnico` (`id_tecnico`, `rol`, `name`, `pass`) VALUES
(1, 1, 'Marco Antonio Covarrubias Garcia', '768328'),
(2, 1, 'Carlos Alberto Martinez', '796607'),
(3, 1, 'Juan Carlos Medina Cardoza', '843733'),
(4, 1, 'Adrian Aguilera Aparicio', '891727'),
(5, 1, 'Marco Antonio Rodriguez Vazquez', '927020'),
(6, 1, 'Arturo Baltazar Quiroz', '928754'),
(7, 1, 'Max Navarro', '851244'),
(8, 1, 'Richard', '1212');



CREATE TABLE `operador` (
 `id_operador` INT(11) NOT NULL AUTO_INCREMENT,
 `rol` INT(11) NOT NULL,
 `name` VARCHAR(100) NOT NULL,
 `pass` VARCHAR(100) NOT NULL,
 PRIMARY KEY (`id_operador`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `operador` (`id_operador`, `rol`, `name`, `pass`) VALUES
(9, 2, 'Carolina Carvajal Sanchez', '30022'),
(10, 2, 'Virginia Blas Hernandez', '14890'),
(11, 2, 'Alejandro Vaquera Lopez', '771431'),
(12, 2, 'Elizabeth Martinez Hereida', '771596'),
(13, 2, 'Maria del Rosario Martinez Flores', '798276'),
(14, 2, 'Ana Laura Garcia Mendez', '758275'),
(15, 2, 'Gabriela Francisca Mujica Martinez', '795996'),
(16, 2, 'Sanjuanita Lumbreras Macias', '837820'),
(17, 2, 'Karla Ivon Zamora Arizpe', '30052'),
(18, 2, 'Jesica Deyanira Herrera Espain', '30078'),
(19, 2, 'Maria Cristina Hernandez Garcia', '795530'),
(20, 2, 'Isaac Hernandez Ramos', '797490'),
(21, 2, 'Laura Silvia Alejo Mendez', '769900'),
(22, 2, 'Ma Amparo Luna Salazar', '771128'),
(23, 2, 'Ma Dolores Cerda Briones', '802676'),
(24, 2, 'Laura Alejandra P. Reyes', '770508'),
(25, 2, 'Maria Ines Blas Hernandez ', '769882'),
(26, 2, 'Adriana Ramos Hernandez', '800111'),
(27, 2, 'Maria Guadalupe Landeros Arredondo', '769909'),
(28, 2, 'Maria Guadalupe Esparza Esparza', '780618'),
(29, 2, 'Raquel Marroquín Aldaco', '770507'),
(30, 2, 'Francisca Flores Chavez ', '780960'),
(31, 2, 'Beatriz Hernandez Resendiz', '30087'),
(32, 2, 'Maria Magdalena Martinez Flores', '798274'),
(33, 2, 'Karen Areli Martinez Avila', '770680'),
(34, 2, 'Heydy Marcela Castillo Bernal', '795039'),
(35, 2, 'Karla Merary Segura Muro', '30095'),
(36, 2, 'Pilar Guadalupe Cedillo Ibarra', '771276'),
(37, 2, 'Norma Liliana Padilla Vazquez ', '780956'),
(38, 2, 'Maricela Wario Sandoval ', '795996'),
(39, 2, 'Rocio Elizabeth Romero Arias ', '801607'),
(40, 2, 'Daniela Hernandez Hernandez', '803485'),
(41, 2, 'Claudia M. Abigail Camacho Delgado ', '795029'),
(42, 2, 'Cristina Hernandez Martinez', '770183'),
(43, 2, 'Esperanza Belen Márquez Fuentes', '30089');



CREATE TABLE `turno` (
 `id_turno` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_turno` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_turno`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `turno` (`id_turno`, `nombre_turno`) VALUES
(1, 'DIA'),
(2, 'TARDE'),
(3, 'NOCHE'),
(4, 'DIA 12HRS'),
(5, 'TARDE 12HRS');



CREATE TABLE `linea` (
 `id_linea` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_linea` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_linea`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `linea` (`id_linea`, `nombre_linea`) VALUES
(1, '1 SMT'),
(2, '2 SMT'),
(3, '3 SMT'),
(4, '4 SMT'),
(5, '5 SMT'),
(6, '6 SMT'),
(7, '7 SMT');



CREATE TABLE `equipo` (
 `id_equipo` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_equipo` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_equipo`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `equipo` (`id_equipo`, `nombre_equipo`) VALUES
(1, 'DEK'),
(2, 'SPI'),
(3, 'NXT'),
(4, 'XPF'),
(5, 'AOI'),
(6, 'BTU');



CREATE TABLE `falla_dek` (
 `id_falla_dek` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_falla_dek` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_falla_dek`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `falla_dek` (`id_falla_dek`, `nombre_falla_dek`) VALUES
(1, 'STENCIL'),
(2, 'PROCESO PASTA'),
(3, 'PROCESO GOMA'),
(4, 'CONVEYOR'),
(5, 'PINES');



CREATE TABLE `falla_spi` (
 `id_falla_spi` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_falla_spi` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_falla_spi`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `falla_spi` (`id_falla_spi`, `nombre_falla_spi`) VALUES
(1, 'OPERACION'),
(2, 'FIDUCIALES'),
(3, 'DEBUG'),
(4, 'PC INHIBIDA'),
(5, 'CONVEYOR'),
(6, 'FALTA PROGRAMA'),
(7, 'fallaS REALES'),
(8, 'falla ELECTRICA'),
(9, 'MTTO PREVENTIVO');


CREATE TABLE `falla_nxt` (
 `id_falla_nxt` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_falla_nxt` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_falla_nxt`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `falla_nxt` (`id_falla_nxt`, `nombre_falla_nxt`) VALUES
(1, 'CONVEYOR'),
(2, 'SENSORES'),
(3, 'ERROR DE CAMARA'),
(4, 'FEEDER PALLET'),
(5, 'BOQUILLAS'),
(6, 'CABEZAL'),
(7, 'ERROR DE EJE'),
(8, 'PROCESO DE VISION'),
(9, 'PROCESO DE PLACEMENT');



CREATE TABLE `falla_xpf` (
 `id_falla_xpf` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_falla_xpf` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_falla_xpf`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `falla_xpf` (`id_falla_xpf`, `nombre_falla_xpf`) VALUES
(1, 'CONVEYOR'),
(2, 'SENSORES'),
(3, 'ERROR DE CAMARA'),
(4, 'FEEDER PALLET'),
(5, 'BOQUILLAS'),
(6, 'CABEZAL'),
(7, 'ERROR DE EJE'),
(8, 'PROCESO DE VISION'),
(9, 'PROCESO DE PLACEMENT');


CREATE TABLE `falla_aoi` (
 `id_falla_aoi` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_falla_aoi` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_falla_aoi`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `falla_aoi` (`id_falla_aoi`, `nombre_falla_aoi`) VALUES
(1, 'FALTA PROGRAMA'),
(2, 'PC INHIBIDA'),
(3, 'CONVEYOR'),
(4, 'FIDUCIALES'),
(5, 'falla DE VISION'),
(6, 'ERROR DE DISCO LLENO'),
(7, 'CODIGO NO SE PUEDE LEER');



CREATE TABLE `falla_btu` (
 `id_falla_btu` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_falla_btu` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_falla_btu`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `falla_btu` (`id_falla_btu`, `nombre_falla_btu`) VALUES
(1, 'ANCHO CONVEYOR'),
(2, 'ESTABILIZACION TEMPURATURA'),
(3, 'SISTEMA INHIBIDO'),
(4, 'COOLER'),
(5, 'DEFECTOS DE PROCESO'),
(6, 'FLUX CONDENSER'),
(7, 'MTTO PREVENTIVO');



CREATE TABLE `fecha` ( 
 `id_fecha` INT(11) NOT NULL AUTO_INCREMENT,
 `fecha_comienzo` DATETIME NOT NULL, 
 `fecha_atendido` DATETIME NOT NULL, 
 `fecha_cerrado` DATETIME NOT NULL,  
 PRIMARY KEY (`id_fecha`)
 ) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;
  
 
INSERT INTO `fecha` (`id_fecha`, `fecha_comienzo`) VALUES 
(1, CURRENT_TIMESTAMP());

INSERT INTO `fecha` (`id_fecha`, `fecha_atendido`) VALUES 
(2, CURRENT_TIMESTAMP());

INSERT INTO `fecha` (`id_fecha`, `fecha_cerrado`) VALUES 
(3, CURRENT_TIMESTAMP());



CREATE TABLE `estado` (
 `id_estado` INT(11) NOT NULL AUTO_INCREMENT,
 `nombre_estado` VARCHAR(50) NOT NULL,
 PRIMARY KEY (`id_estado`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;


INSERT INTO `estado` (`id_estado`, `nombre_estado`) VALUES
(1, 'OPEN'),
(2, 'INPROCESS'),
(3, 'CLOSED');


CREATE TABLE `new_folio` ( 
 `id_new_folio` INT(11) NOT NULL AUTO_INCREMENT,
 `id_operador` INT(11) NOT NULL, 
 `id_turno` INT(11) NOT NULL,
 `id_linea` INT(11) NOT NULL,
 `id_equipo` INT(11) NOT NULL,
 `id_falla` INT(11) NOT NULL,
 `id_fecha_comienzo` INT(11) NOT NULL,
 `id_fecha_atendido` INT(11) NOT NULL,
 `id_fecha_cerrado` INT(11) NOT NULL,
 `id_estado` INT(11) NOT NULL,
 `id_tecnico` INT(11) NOT NULL,
 `comentario` VARCHAR(100) NOT NULL, 
 PRIMARY KEY (`id_new_folio`),
FOREIGN KEY (`id_operador`) REFERENCES operador(`id_operador`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_turno`) REFERENCES turno(`id_turno`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_linea`) REFERENCES linea(`id_linea`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_equipo`) REFERENCES equipo(`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_falla`) REFERENCES falla(`id_falla`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_fecha_comienzo`) REFERENCES fecha(`id_fecha`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_fecha_atendido`) REFERENCES fecha(`id_fecha`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_fecha_cerrado`) REFERENCES fecha(`id_fecha`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_estado`) REFERENCES estado(`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_tecnico`) REFERENCES tecnico(`id_tecnico`) ON DELETE CASCADE ON UPDATE CASCADE
 ) ENGINE = InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;
 
 