USE trabalhofinaldw;

CREATE TABLE staging (
	ano	VARCHAR(255),	
	concedido_judicialmente	VARCHAR(255),	
	cpf	VARCHAR(255),		
	enquadramento VARCHAR(255),		
	menor_16_anos VARCHAR(255),
	mes VARCHAR(255),
	nis	VARCHAR(255),
	nome_beneficiario VARCHAR(255),		
	nome_beneficio	VARCHAR(255),
	nome_municipio VARCHAR(255),
	observacao VARCHAR(255),			
	parcela	VARCHAR(255),
	qtd_dependente	VARCHAR(255),	
	representante_legal	VARCHAR(255),
	valor_recebido	VARCHAR(255),
    uf VARCHAR(255),
    cidade VARCHAR(255)
);

CREATE TABLE staging_dim_beneficiario (
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
