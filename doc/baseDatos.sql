SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Alumno`;
DROP TABLE IF EXISTS `Curso`;
DROP TABLE IF EXISTS `Rol`;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS `inscripcion`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Alumno` (
    `id_alumno` int AUTO_INCREMENT NOT NULL,
    `nombre` varchar NOT NULL,
    `apellido` varchar NOT NULL,
    `mail` varchar NOT NULL,
    `password` varchar NOT NULL,
    `mail` varchar NOT NULL,
    PRIMARY KEY (`id_alumno`)
);

CREATE TABLE `Curso` (
    `id_curso` int AUTO_INCREMENT NOT NULL,
    `nombre_curso` varchar NOT NULL,
    `stack` varchar NOT NULL,
    `id_` INTEGER NOT NULL,
    PRIMARY KEY (`id_curso`)
);

CREATE TABLE `Rol` (
    `rol_id` int AUTO_INCREMENT NOT NULL,
    `nombre_rol` varchar NOT NULL,
    PRIMARY KEY (`rol_id`)
);

CREATE TABLE `User` (
    `mail` varchar NOT NULL,
    `password` varchar NOT NULL,
    `usertype` int NOT NULL,
    PRIMARY KEY (`mail`)
);

CREATE TABLE `inscripcion` (
    `id_alumno` int NOT NULL,
    `id_curso` int NOT NULL
);

ALTER TABLE `Alumno` ADD FOREIGN KEY (`mail`) REFERENCES `User`(`mail`);
ALTER TABLE `User` ADD FOREIGN KEY (`usertype`) REFERENCES `Rol`(`rol_id`);
ALTER TABLE `inscripcion` ADD FOREIGN KEY (`id_alumno`) REFERENCES `Alumno`(`id_alumno`);
ALTER TABLE `inscripcion` ADD FOREIGN KEY (`id_curso`) REFERENCES `Curso`(`id_curso`);