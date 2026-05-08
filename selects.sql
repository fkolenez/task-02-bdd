# 1. (JOIN) Liste todos os empréstimos em aberto ou atrasados, exibindo o nome do usuário, 
# a matrícula, o título do livro e o nome do funcionário que registrou o empréstimo.

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

# 2. (JOIN) Exiba todos os livros cadastrados junto com o nome da sua categoria, ordenados pelo 
# nome da categoria e depois pelo título do livro.

SELECT
	l.titulo AS 'Titulo do livo',
    c.nome 'Categoria'  
FROM livro AS l INNER JOIN categoria AS c 
ON l.id_categoria = c.id
ORDER BY c.nome, l.titulo; 

# 3. (ORDER BY) Liste todos os usuários do tipo aluno em ordem alfabética pelo nome, 
# exibindo nome, matrícula, curso e email.

SELECT * FROM usuario ORDER BY nome ASC;

# 4. (Agregação) Mostre quantos empréstimos cada usuário já realizou, exibindo o nome e a matrícula.
# Ordene do usuário com mais empréstimos para o com menos.

SELECT u.nome, u.matricula, COUNT(e.id) FROM emprestimo e INNER JOIN usuario u
ON e.id_funcionario = u.id
GROUP BY u.id, u.nome, u.matricula;