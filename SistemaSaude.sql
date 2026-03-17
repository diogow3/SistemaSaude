CREATE TABLE paciente (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cartaosus CHAR(7) UNIQUE
);

CREATE TABLE endereco (
	id SERIAL PRIMARY KEY,
	idpaciente INT UNIQUE NOT NULL,
	cep CHAR(8),
	cidade VARCHAR(50),
	bairro VARCHAR(50),
	logradouro VARCHAR(100),
	numero VARCHAR(10),
	FOREIGN KEY (idpaciente) REFERENCES paciente(id) ON DELETE CASCADE
);

CREATE TABLE procedimento (
	id SERIAL PRIMARY KEY,
	codigo CHAR(4) NOT NULL UNIQUE,
	nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE agendamento (
	id SERIAL PRIMARY KEY,
	idPaciente INT REFERENCES paciente(id),
	idProcedimento INT REFERENCES procedimento(id),
	datahora TIMESTAMP
);

INSERT INTO paciente(nome, cartaosus)
VALUES
('Diogo Oliveira', '1234567'),
('Joao Silva', '0123456');

INSERT INTO endereco(cep, cidade, bairro, logradouro, numero, idpaciente)
VALUES
('25963083', 'Teresópolis', 'Várzea', 'Avenida Feliciano Sodré', '413', 1),
('25975450', 'Teresópolis', 'Tijuca', 'Rua Júlio Rosa', '366', 2);

INSERT INTO procedimento (codigo, nome)
VALUES
('1117', 'Colesterol no Sangue'),
('2380', 'Raio-X de Tórax');

INSERT INTO agendamento (idpaciente, idprocedimento, datahora)
VALUES
(1, 1, '2026-05-10 08:00:00'),
(2, 2, '2026-05-10 09:00:00');
