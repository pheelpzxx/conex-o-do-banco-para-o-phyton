CREATE DATABASE arena_auto;
USE arena_auto;

CREATE TABLE devolucoes_tbl (
    id_devolucao INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Nome do motorista (se não tiver cadastro formal)
    motorista_dev VARCHAR(100) NOT NULL,
    
    -- Código da ordem de serviço ou locação relacionada
    id_ordem_servico INT NOT NULL,
    
    -- Peças devolvidas (anotação livre)
    pecas_devolvidas TEXT,
    
    -- Valor da devolução (ex: reembolso)
    valor DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    
    -- Data da devolução (obrigatória)
    data_devolucao DATE NOT NULL,
    
    -- Condição dos itens devolvidos
    condicao VARCHAR(200)
);
CREATE TABLE funcionario_tbl (
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
-- Dados pessoais
nome_funcionario VARCHAR(200),
cpf_funcionario CHAR(14) NOT NULL UNIQUE,
data_nasc_funcionario DATE NOT NULL,
sexo_funcionario ENUM('M','F','OUTRO'),
estado_civil_funcionario VARCHAR(20),
-- Contato
tel_funcionario VARCHAR(20) NOT NULL,
email_funcionario VARCHAR(100),
endereco_funcionario TEXT,
-- Documentos (Brasil)
numero_ctps_funcionario VARCHAR(30),
pis_funcionario VARCHAR(20),

-- Profissional
cargo_funcionario VARCHAR(50) NOT NULL,
departamento_funcionario VARCHAR(50),
data_adimissao_funcionario DATE NOT NULL,
data_demissao_funcionario DATE NULL,
tipo_contrato_funcionario ENUM('CLT','PJ','ESTÁGIO','TEMPORÁRIO') DEFAULT 'CLT',
salario_funcionario DECIMAL(10,2),
status_funcionario ENUM('Ativo','Inativo','Afastado') DEFAULT 'Ativo',

-- Emergência
contato_emergencia_funcionario VARCHAR(100),
telefone_emergencia_funcionario VARCHAR(20)
);