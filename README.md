# 🚀 Data Lake & ETL Pipeline com Python, S3, DBT e Supabase

## 📌 Visão Geral

Este projeto demonstra a construção de uma pipeline de dados end-to-end utilizando conceitos modernos de Engenharia de Dados, incluindo Data Lake, ETL e arquitetura em camadas (Medallion Architecture).

O pipeline realiza a ingestão de arquivos CSV, transformação para formato Parquet e organização dos dados em camadas Bronze, Silver e Gold, utilizando DBT para modelagem analítica.

Além disso, foi utilizado um documento PRD (Product Requirements Document) para guiar a estruturação das tabelas e regras de negócio.

---

## 📂 Estrutura dos Dados

O Data Lake contém arquivos no formato Parquet representando tabelas de um sistema de e-commerce:

* `clientes.parquet`
* `produtos.parquet`
* `vendas.parquet`
* `preco_competidores.parquet`


## 🎯 Objetivo

Construir uma pipeline end-to-end que:

* Ingere dados brutos (CSV)
* Converte e armazena em formato otimizado (Parquet)
* Organiza dados em camadas (Bronze, Silver e Gold)
* Aplica transformações com DBT
* Disponibiliza dados prontos para análise


## 🏗️ Arquitetura (Medallion)

A arquitetura segue o padrão moderno de Data Engineering:

### 🟤 Bronze (Raw)

* Dados brutos em CSV
* Armazenados no Data Lake (S3)
* Sem tratamento

### ⚪ Silver (Trusted)

* Conversão CSV → Parquet
* Limpeza e padronização
* Tipagem de dados

### 🟡 Gold (Business)

* Modelagem com DBT
* Regras de negócio aplicadas
* Tabelas analíticas

---

## 🛠️ Tecnologias Utilizadas

* 🐍 Python
* ☁️  S3
* 📦 boto3
* 🧪 Parquet
* 🧠 Google Colab / Notebooks
* 🗄️ Supabase
* ⚙️ SQL
* 🔄 DBT (Data Build Tool)
* 🤖 Gemini AI
* 📄 PRD (Product Requirements Document)

---

## 🔄 Pipeline de Dados

### 1. Ingestão

* Leitura de arquivos CSV
* Upload para S3 via boto3
* Armazenamento na camada Bronze

### 2. Transformação (Silver)

* Conversão para Parquet
* Limpeza e padronização
* Organização no Data Lake

### 3. Modelagem (Gold com DBT)

* Criação de modelos SQL
* Versionamento de transformações
* Testes de qualidade
* Organização por camadas

### 4. Persistência

* Carga no PostgreSQL (Supabase)
* Dados prontos para consumo analítico


---

## 🔄 DBT (Data Build Tool)

O DBT foi utilizado na camada Gold para:

* Modelagem de dados analíticos
* Criação de pipelines SQL versionados
* Documentação automática
* Testes de qualidade de dados
* Organização das transformações por camadas

Exemplo de comando:

```bash id="d1k9lp"
dbt run
dbt test
```

---

## 📄 PRD (Product Requirements Document)

O arquivo `PRD.md` foi utilizado como base estratégica para o projeto, contendo:

* Definição das entidades
* Regras de negócio
* Estrutura das tabelas
* Definição das camadas Bronze, Silver e Gold
* Casos de uso analíticos

Esse documento foi essencial para garantir consistência e organização na modelagem dos dados.

---

## 🧠 Uso de IA (Gemini)

A IA Gemini foi utilizada para:

* Apoiar na construção do PRD
* Sugerir modelos DBT
* Otimizar queries SQL
* Auxiliar na definição da arquitetura medalhão

---

## 📊 Banco de Dados (Supabase)

Os dados da camada Gold são persistidos no Supabase para consumo por aplicações e análises.

---

## 📈 Resultados

* Pipeline de dados completo (ETL)
* Arquitetura de Data Lake moderna
* Modelagem com DBT
* Governança com PRD
* Dados otimizados com Parquet
* Integração com cloud e banco moderno


## 👨‍💻 Vitor Santos

Projeto desenvolvido para portfólio em Engenharia de Dados.

---

## ⭐ Contribuições

Pull Requests são bem-vindos!
