# 📚 BD Biblioteca Univille
 
Sistema de banco de dados relacional para gerenciamento de uma biblioteca universitária, desenvolvido em MySQL. Controla o acervo de livros, usuários, funcionários e empréstimos da biblioteca da Univille.
 
---
 
## 🗂️ Estrutura do Banco de Dados
 
### Tabelas
 
| Tabela | Descrição |
|---|---|
| `categoria` | Categorias dos livros (ex: Ciência da Computação, Medicina) |
| `livro` | Acervo completo com dados bibliográficos e quantidade de exemplares |
| `funcionario` | Funcionários da biblioteca com controle de acesso (login/senha) |
| `usuario` | Usuários cadastrados: alunos, professores e funcionários |
| `emprestimo` | Registro de todos os empréstimos, devoluções e status |
 
### Diagrama de Relacionamentos
 
```
categoria ─────< livro >───────────────────────────────┐
                              emprestimo >──── funcionario
                  usuario >───┘
```
 
- Um `livro` pertence a uma `categoria`
- Um `emprestimo` referencia um `usuario`, um `livro` e um `funcionario`
- As chaves estrangeiras usam `ON UPDATE CASCADE`
---
 
## 📦 Dados de Exemplo
 
O script já inclui dados iniciais para testes:
 
- **25 categorias** (áreas do conhecimento acadêmico)
- **25 livros** com ISBN, autor, editora, ano, edição e quantidade de exemplares
- **20 funcionários** (bibliotecários, atendentes e auxiliares)
- **25 usuários** (20 alunos, 4 professores, 1 funcionário administrativo)
- **25 empréstimos** com diferentes status
---
 
## 📋 Pré-requisitos
 
- MySQL 8.0 ou superior
- MySQL Workbench (opcional, recomendado)
---
 
## 🚀 Como executar
 
1. Clone ou baixe o arquivo `.sql`
2. Abra o MySQL Workbench ou seu cliente MySQL preferido
3. Execute o script completo:
```sql
SOURCE caminho/para/bd_biblioteca_univille.sql;
```
 
Ou cole e execute diretamente no editor de queries.
 
O script criará o banco `bd_biblioteca_univille` e populará todas as tabelas automaticamente.
 
---
 
## 🔍 Consultas disponíveis
 
O script inclui 8 queries prontas para análise:
 
| # | Descrição |
|---|---|
| 1 | Empréstimos em aberto ou atrasados (usuário, matrícula, livro, funcionário) |
| 2 | Todos os livros com sua categoria, ordenados por categoria e título |
| 3 | Alunos em ordem alfabética (nome, matrícula, curso, email) |
| 4 | Quantidade de empréstimos por usuário (do mais ativo ao menos ativo) |
| 5 | Top 10 livros mais emprestados |
| 6 | Total de usuários por tipo (aluno, professor, funcionário) |
| 7 | Total de empréstimos por status (Em aberto, Devolvido, Atrasado) |
| 8 | Quantidade de empréstimos registrados por funcionário |
 
---
 
## 🔐 Segurança
 
As senhas dos funcionários são armazenadas com hash **SHA-256** via `SHA2('senha', 256)`. Os dados de exemplo usam a senha padrão `senha123` (somente para fins de teste).
 
---
 
## 📁 Estrutura do projeto
 
```
bd_biblioteca_univille/
└── bd_biblioteca_univille.sql   # Script completo (DDL + DML + queries)
```
 
---
 
## 🛠️ Tecnologias
 
- **MySQL** — banco de dados relacional
- **SQL** — DDL (criação de tabelas) e DML (inserção e consultas)
 