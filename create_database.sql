CREATE DATABASE IF NOT EXISTS TrabalhoFinalDW;

USE TrabalhoFinalDW;

CREATE TABLE IF NOT EXISTS dim_beneficio (
  id_dim_beneficio INT AUTO_INCREMENT PRIMARY KEY,
  nome_beneficio VARCHAR(255),
  descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS dim_beneficiario (
  id_dim_beneficiario INT AUTO_INCREMENT PRIMARY KEY,
  id_versao INT,
  nome_beneficiario VARCHAR(255),
  nis VARCHAR(20),
  cpf VARCHAR(14),
  qtd_dependente INT,
  menor_16_anos BOOLEAN,
  concedido_judicialmente BOOLEAN,
  enquadramento VARCHAR(255),
  representante_legal VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS dim_municipio (
  id_dim_municipio INT AUTO_INCREMENT PRIMARY KEY,
  nome_municipio VARCHAR(255),
  cidade VARCHAR(255),
  uf VARCHAR(2)
);

CREATE TABLE IF NOT EXISTS dim_periodo_referencia (
  id_dim_periodo_referencia INT AUTO_INCREMENT PRIMARY KEY,
  mes INT,
  ano INT
);

CREATE TABLE IF NOT EXISTS dim_pagamento_beneficiario (
  id_dim_periodo_referencia INT,
  id_dim_municipio INT,
  id_dim_beneficiario INT,
  id_dim_beneficio INT,
  valor_recebido FLOAT,
  parcela INT,
  observacao VARCHAR(255),
  FOREIGN KEY (id_dim_periodo_referencia) REFERENCES dim_periodo_referencia(id_dim_periodo_referencia),
  FOREIGN KEY (id_dim_municipio) REFERENCES dim_municipio(id_dim_municipio),
  FOREIGN KEY (id_dim_beneficiario) REFERENCES dim_beneficiario(id_dim_beneficiario),
  FOREIGN KEY (id_dim_beneficio) REFERENCES dim_beneficio(id_dim_beneficio)
);
