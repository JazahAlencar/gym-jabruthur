CREATE DATABASE IF NOT EXISTS academia_jabruth;
USE academia_jabruth;

-- Alunos
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    peso DECIMAL(5,2),
    altura DECIMAL(5,2),
    objetivo VARCHAR(50),
    restricoes TEXT,
    rua VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    cep VARCHAR(10)
);

-- Planos
CREATE TABLE planos (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    nome_plano VARCHAR(50),   -- Mensal, Trimestral, Anual
    valor DECIMAL(10,2),
    duracao_meses INT         -- 1, 3, 12
);

-- Matrículas
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_plano INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
);

-- Pagamentos
CREATE TABLE pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT NOT NULL,
    data_vencimento DATE NOT NULL,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    status ENUM('PAGO','PENDENTE','ATRASADO') DEFAULT 'PENDENTE',
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id_matricula)
);

-- Fichas de treino
CREATE TABLE fichas_treino (
    id_ficha INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    objetivo VARCHAR(200),
    data_criacao DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

-- Exercícios
CREATE TABLE exercicios (
    id_exercicio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    grupo_muscular VARCHAR(50)
);

-- Relacionamento ficha x exercício
CREATE TABLE treino_exercicios (
    id_treino_exercicio INT AUTO_INCREMENT PRIMARY KEY,
    id_ficha INT NOT NULL,
    id_exercicio INT NOT NULL,
    series INT,
    repeticoes INT,
    dia_semana ENUM('SEG','TER','QUA','QUI','SEX','SAB'),
    FOREIGN KEY (id_ficha) REFERENCES fichas_treino(id_ficha),
    FOREIGN KEY (id_exercicio) REFERENCES exercicios(id_exercicio)
);

-- Presenças
CREATE TABLE presencas (
    id_presenca INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

-- Treinos personalizados (opcional, para formulário do aluno já matriculado)
CREATE TABLE treinos_personalizados (
    id_treino INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    peso DECIMAL(5,2),
    altura DECIMAL(5,2),
    objetivo VARCHAR(50),
    restricoes TEXT,
    data_solicitacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);
