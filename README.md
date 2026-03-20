# 🚀 Data Lake & ETL Pipeline com Python, AWS S3, DBT e Supabase

## 📌 Visão Geral

Este projeto demonstra a construção de uma pipeline de dados end-to-end utilizando conceitos modernos de Engenharia de Dados, incluindo Data Lake, ETL e arquitetura em camadas (Medallion Architecture).

O pipeline realiza a ingestão de arquivos CSV, transformação para formato Parquet e organização dos dados em camadas Bronze, Silver e Gold, utilizando DBT para modelagem analítica.

Além disso, foi utilizado um documento PRD (Product Requirements Document) para guiar a estruturação das tabelas e regras de negócio.

---

## 🏗️ Arquitetura

A arquitetura segue o padrão de **Medallion Architecture**:

* 🟤 **Bronze** → Dados brutos (CSV, ingestão direta)
* ⚪ **Silver** → Dados limpos, tratados e padronizados (Parquet)
* 🟡 **Gold** → Dados analíticos modelados com DBT

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

### 1. Ingestão (Bronze)

* Leitura de arquivos CSV
* Upload para SUpabase via boto3
* Armazenamento de dados brutos

---

### 2. Transformação (Silver)

* Conversão de CSV → Parquet
* Limpeza e tratamento de dados
* Padronização de schemas
* Escrita no Data Lake (S3)

---

### 3. Modelagem (Gold com DBT)

* Criação de modelos analíticos
* Aplicação de regras de negócio
* Construção de tabelas finais
* Versionamento e rastreabilidade com DBT

---

### 4. Persistência

* Integração com Supabase
* Disponibilização dos dados para consumo

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

## ☁️ Data Lake (S3)

```id="r3f8xm"
s3://meu-data-lake/
    ├── bronze/
    ├── silver/
    └── gold/
```

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
