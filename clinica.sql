-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-01-2025 a las 02:03:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `ID_consulta` int(11) NOT NULL,
  `Fecha_y_hora` datetime DEFAULT NULL,
  `ID_medico` int(11) DEFAULT NULL,
  `ID_paciente` int(11) DEFAULT NULL,
  `Motivo_de_consulta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`ID_consulta`, `Fecha_y_hora`, `ID_medico`, `ID_paciente`, `Motivo_de_consulta`) VALUES
(1, '2024-12-31 09:00:00', 1, 11, 'Revisión anual'),
(2, '2024-12-31 10:30:00', 2, 12, 'Dolor de cabeza persistente'),
(3, '2024-12-31 11:45:00', 3, 13, 'Control de diabetes'),
(4, '2024-12-31 14:00:00', 4, 14, 'Consulta por tos'),
(5, '2024-12-31 15:30:00', 5, 15, 'Dolor muscular'),
(6, '2024-12-31 16:00:00', 1, 16, 'Chequeo general'),
(7, '2024-12-31 17:30:00', 2, 17, 'Consulta de seguimiento post-operatorio'),
(8, '2024-12-31 18:00:00', 2, 18, 'Consulta de control de hipertensión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `ID_especialidad` int(11) NOT NULL,
  `Nombre_especialidad` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Codigo` varchar(50) DEFAULT NULL,
  `ID_medico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`ID_especialidad`, `Nombre_especialidad`, `Descripcion`, `Codigo`, `ID_medico`) VALUES
(1, 'Cardiología', 'Especialidad médica dedicada al diagnóstico y tratamiento de enfermedades del corazón y del sistema circulatorio.', 'CAR-001', 1),
(2, 'Dermatología', 'Especialidad médica que se enfoca en el diagnóstico y tratamiento de enfermedades de la piel, cabello y uñas.', 'DER-002', 2),
(3, 'Pediatría', 'Especialidad médica que se ocupa de la atención médica de los niños desde su nacimiento hasta su adolescencia.', 'PED-003', 3),
(4, 'Neurología', 'Especialidad médica que se enfoca en el diagnóstico y tratamiento de trastornos del sistema nervioso.', 'NEU-004', 4),
(5, 'Ginecología', 'Especialidad médica que se ocupa del cuidado del sistema reproductor femenino y del embarazo.', 'GIN-005', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `ID_medicamento` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  `Dosis_recomendada` float DEFAULT NULL,
  `Efectos_secundarios` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`ID_medicamento`, `Nombre`, `Tipo`, `Dosis_recomendada`, `Efectos_secundarios`) VALUES
(1, 'Paracetamol', 'Analgésico', 500, 'Náuseas, dolor abdominal, erupción cutánea'),
(2, 'Ibuprofeno', 'Antiinflamatorio no esteroide (AINE)', 200, 'Dolor de estómago, mareos, acidez'),
(3, 'Amoxicilina', 'Antibiótico (Penicilina)', 500, 'Náuseas, diarrea, erupción cutánea'),
(4, 'Loratadina', 'Antihistamínico', 10, 'Somnolencia, dolor de cabeza, sequedad en la boca'),
(5, 'Metformina', 'Antidiabético', 500, 'Náuseas, diarrea, dolor abdominal'),
(6, 'Atenolol', 'Betabloqueante', 25, 'Fatiga, mareos, bradicardia'),
(7, 'Omeprazol', 'Inhibidor de la bomba de protones (IBP)', 20, 'Dolor de cabeza, diarrea, náuseas'),
(8, 'Ciprofloxacino', 'Antibiótico (Quinolona)', 250, 'Náuseas, diarrea, tendinitis'),
(9, 'Simvastatina', 'Estatina (Hipolipemiante)', 10, 'Dolores musculares, mareos, problemas digestivos'),
(10, 'Furosemida', 'Diurético', 20, 'Hipotensión, deshidratación, mareos'),
(11, 'Diazepam', 'Ansiolítico (Benzodiacepina)', 2, 'Somnolencia, mareos, problemas de memoria'),
(12, 'Lisinopril', 'Inhibidor de la ECA (Antihipertensivo)', 10, 'Mareos, tos, fatiga'),
(13, 'Prednisona', 'Corticoide', 5, 'Aumento de peso, acné, insomnio'),
(14, 'Alprazolam', 'Ansiolítico (Benzodiacepina)', 0.25, 'Somnolencia, mareos, debilidad'),
(15, 'Dexametasona', 'Corticoide', 0.75, 'Aumento de peso, insomnio, irritabilidad'),
(16, 'Salbutamol', 'Broncodilatador', 1, 'Temblor, nerviosismo, dolor de cabeza'),
(17, 'Venlafaxina', 'Antidepresivo (Inhibidor de la recaptación de serotonina y noradrenalina)', 75, 'Náuseas, insomnio, sequedad en la boca'),
(18, 'Clonazepam', 'Ansiolítico (Benzodiacepina)', 0.5, 'Somnolencia, mareos, debilidad muscular'),
(19, 'Levotiroxina', 'Hormona tiroidea', 50, 'Nerviosismo, pérdida de peso, palpitaciones'),
(20, 'Tramadol', 'Analgésico opioide', 50, 'Náuseas, mareos, somnolencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `ID_medico` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Especialidad` varchar(200) DEFAULT NULL,
  `Telefono` int(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`ID_medico`, `Nombre`, `Especialidad`, `Telefono`, `Correo`) VALUES
(1, 'Juan Pérez', 'Médico Cirujano', 123, 'juan.perez@email.com'),
(2, 'María García', 'Médico Cirujano', 456, 'maria.garcia@email.com'),
(3, 'Carlos López', 'Pediatra', 789, 'carlos.lopez@email.com'),
(4, 'Laura Rodríguez', 'Ginecóloga', 101, 'laura.rodriguez@email.com'),
(5, 'Pedro Sánchez', 'Pediatra', 102, 'pedro.sanchez@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `ID_paciente` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `Telefono` int(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`ID_paciente`, `Nombre`, `fecha_de_nacimiento`, `Telefono`, `direccion`) VALUES
(11, 'Ana Pérez', '1985-05-12', 5551234, 'Calle Falsa 123, Ciudad X'),
(12, 'Juan García', '1992-09-23', 5555678, 'Avenida Siempre Viva 456, Ciudad Y'),
(13, 'Marta Rodríguez', '1978-11-30', 5559876, 'Calle Luna 789, Ciudad Z'),
(14, 'Luis González', '1989-01-15', 5553456, 'Plaza Mayor 321, Ciudad A'),
(15, 'Laura Martínez', '1990-07-04', 5558765, 'Calle Sol 654, Ciudad B'),
(16, 'Roberto Sánchez', '1982-03-09', 5551122, 'Calle Mar 543, Ciudad C'),
(17, 'Sofia Díaz', '1995-10-19', 5552233, 'Calle Norte 234, Ciudad D'),
(18, 'Carlos Fernández', '1983-06-27', 5553344, 'Avenida del Río 456, Ciudad E'),
(19, 'Pedro Ruiz', '1991-02-02', 5554455, 'Calle Oeste 678, Ciudad F'),
(20, 'Isabel Romero', '1984-08-11', 5555566, 'Calle Sur 789, Ciudad G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_medicamento`
--

CREATE TABLE `paciente_medicamento` (
  `ID_paciente` int(11) NOT NULL,
  `ID_medicamento` int(11) NOT NULL,
  `Fecha_de_prescripcion` date DEFAULT NULL,
  `Dosis` float DEFAULT NULL,
  `Duracion_del_tratamiento` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paciente_medicamento`
--

INSERT INTO `paciente_medicamento` (`ID_paciente`, `ID_medicamento`, `Fecha_de_prescripcion`, `Dosis`, `Duracion_del_tratamiento`) VALUES
(11, 1, '2024-12-01', 500, '30 días'),
(11, 11, '2024-12-11', 750, '28 días'),
(12, 2, '2024-12-02', 250, '15 días'),
(12, 12, '2024-12-12', 550, '22 días'),
(13, 3, '2024-12-03', 300, '20 días'),
(13, 13, '2024-12-13', 600, '24 días'),
(14, 4, '2024-12-04', 150, '10 días'),
(14, 14, '2024-12-14', 100, '12 días'),
(15, 5, '2024-12-05', 400, '25 días'),
(15, 15, '2024-12-15', 400, '30 días'),
(16, 6, '2024-12-06', 600, '40 días'),
(17, 7, '2024-12-07', 500, '30 días'),
(18, 8, '2024-12-08', 350, '35 días'),
(19, 9, '2024-12-09', 450, '20 días'),
(20, 10, '2024-12-10', 200, '18 días');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`ID_consulta`),
  ADD UNIQUE KEY `ID_medico` (`ID_medico`,`ID_paciente`),
  ADD KEY `ID_paciente` (`ID_paciente`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`ID_especialidad`),
  ADD KEY `fk_id_medico` (`ID_medico`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`ID_medicamento`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`ID_medico`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`ID_paciente`);

--
-- Indices de la tabla `paciente_medicamento`
--
ALTER TABLE `paciente_medicamento`
  ADD PRIMARY KEY (`ID_paciente`,`ID_medicamento`),
  ADD KEY `ID_medicamento` (`ID_medicamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `ID_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `ID_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `ID_medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `ID_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `ID_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`ID_medico`) REFERENCES `medicos` (`ID_medico`),
  ADD CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`ID_paciente`) REFERENCES `pacientes` (`ID_paciente`);

--
-- Filtros para la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD CONSTRAINT `fk_id_medico` FOREIGN KEY (`ID_medico`) REFERENCES `medicos` (`ID_medico`);

--
-- Filtros para la tabla `paciente_medicamento`
--
ALTER TABLE `paciente_medicamento`
  ADD CONSTRAINT `paciente_medicamento_ibfk_1` FOREIGN KEY (`ID_paciente`) REFERENCES `pacientes` (`ID_paciente`),
  ADD CONSTRAINT `paciente_medicamento_ibfk_2` FOREIGN KEY (`ID_medicamento`) REFERENCES `medicamentos` (`ID_medicamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
