Sistema CuraMed – Banco de Dados

Descrição do Projeto
O sistema CuraMed é um banco de dados desenvolvido para o controle de venda de materiais hospitalares. O objetivo é gerenciar clientes, fornecedores, produtos e vendas de forma organizada e estruturada.

---

Objetivo
Aplicar os conceitos de modelagem de banco de dados, incluindo:
- Modelo Conceitual (DER)
- Modelo Lógico
- Implementação em SQL
- Consultas ao banco de dados

---

Estrutura do Projeto
- Relatório 1 – Requisitos e regras de negócio  
- Relatório 2 – Modelo Conceitual (DER)  
- Relatório 3 – Implementação SQL  
- Relatório 4 – Consultas SQL  
- curamed.sql – Script completo do banco de dados  

---

Tecnologias Utilizadas
- PostgreSQL 
- SQL
- Modelagem de Dados (DER)

---

Autores
Projeto acadêmico desenvolvido para disciplina de Banco de Dados.
- Camila Töpper
-Tainá Fraga

---

Observação
O arquivo `curamed.sql` contém todo o script do banco de dados e pode ser executado em um ambiente PostgreSQL para recriação completa do sistema.

## Como Executar os Scripts SQL

Os scripts foram desenvolvidos para PostgreSQL e devem ser executados na ordem apresentada abaixo.

### 1. Criar o banco de dados

```bash
psql -U postgres -f sql/01_create_database.sql
```

### 2. Criar as tabelas e constraints

```bash
psql -U postgres -d hospital_estoque -f sql/02_create_tables.sql
```

### 3. Criar os índices

```bash
psql -U postgres -d hospital_estoque -f sql/03_indexes.sql
```

### 4. Inserir os dados de exemplo

```bash
psql -U postgres -d hospital_estoque -f sql/04_dados_exemplo.sql
```

### 5. Executar as consultas dos relatórios

```bash
psql -U postgres -d hospital_estoque -f sql/05_consultas.sql
```

### Observações

- Os scripts devem ser executados na ordem apresentada.
- O usuário PostgreSQL utilizado nos exemplos é `postgres`.
- Caso utilize outro usuário, substitua o parâmetro `-U postgres`.
- Os scripts também podem ser executados pelo pgAdmin através da ferramenta **Query Tool**.

