1. (JOIN) Liste todos os empréstimos em aberto ou atrasados, exibindo o nome do usuário, a matrícula, o título do livro e o nome do funcionário que registrou o empréstimo.

```sql
    SELECT 
        e.id AS 'ID emprestimo', 
        e.status 'Status',
        u.nome 'Nome do aluno', 
        u.matricula 'Matricula do usuario',
        f.nome 'Nome do funcionario',
        l.titulo 'Nome do livro' 
    FROM emprestimo AS e INNER JOIN usuario AS u ON e.id_usuario = u.id
    INNER JOIN funcionario AS f ON e.id_funcionario = f.id
    INNER JOIN livro AS l ON e.id_livro = l.id
        WHERE status = 'Devolvido' OR status = 'Atrasado';
```

2. (JOIN) Exiba todos os livros cadastrados junto com o nome da sua categoria, ordenados pelo nome da categoria e depois pelo título do livro.

```sql
    SELECT
        l.titulo AS 'Titulo do livo',
        c.nome 'Categoria'  
    FROM livro AS l INNER JOIN categoria AS c 
    ON l.id_categoria = c.id
    ORDER BY c.nome, l.titulo; 
```

3. (ORDER BY) Liste todos os usuários do tipo aluno em ordem alfabética pelo nome, exibindo nome, matrícula, curso e email.

```sql
    SELECT * FROM usuario ORDER BY nome ASC;
```

4. (Agregação) Mostre quantos empréstimos cada usuário já realizou, exibindo o nome e a matrícula. Ordene do usuário com mais empréstimos para o com menos.

```sql
    SELECT u.nome, u.matricula, COUNT(e.id) FROM emprestimo e INNER JOIN usuario u
    ON e.id_funcionario = u.id
    GROUP BY u.id, u.nome, u.matricula;
```

5. (Livre) Exiba os 10 livros mais emprestados, mostrando o título, o autor e a quantidade de vezes que foram emprestados.

```sql
    SELECT l.titulo, l.autor, e.id FROM livro l INNER JOIN emprestimo e
    ON e.id_livro = l.id
    LIMIT 10
    ORDER BY ASC
```

### Práticando GROUP BY

1. Quantos empréstimos foram registrados por cada funcionário? Exiba o nome do funcionário e o total, ordenado do que mais registrou para o que menos registrou.

```sql

```

2. Quantos livros cada editora tem cadastrados no sistema? Exiba o nome da editora e o total.
3. Qual é a quantidade de usuários por tipo (aluno, professor, funcionario)?
4. Quais categorias têm mais de 1 livro cadastrado? Exiba o nome da categoria e a quantidade.
5. Quantos empréstimos existem por status (Em aberto, Devolvido, Atrasado)? Exiba o status e o total.
6. (desafio) Liste os usuários que têm mais de 1 empréstimo atrasado, exibindo o nome, a matrícula e a quantidade de atrasos.