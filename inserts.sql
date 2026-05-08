USE bd_biblioteca_univille;

-- ============================================================
-- CORREÇÃO: data_devolucao_real deve aceitar NULL
-- ============================================================
ALTER TABLE emprestimo
    MODIFY COLUMN data_devolucao_real DATE NULL;


-- ============================================================
-- INSERT: categoria
-- ============================================================
INSERT INTO categoria (nome, descricao) VALUES
('Ciência da Computação',   'Algoritmos, programação, sistemas operacionais e afins'),
('Engenharia',              'Engenharia civil, elétrica, mecânica e correlatas'),
('Administração',           'Gestão empresarial, finanças e empreendedorismo'),
('Direito',                 'Legislação, jurisprudência e teoria jurídica'),
('Medicina',                'Anatomia, clínica médica e especialidades'),
('Psicologia',              'Psicologia clínica, organizacional e educacional'),
('Pedagogia',               'Educação, didática e metodologias de ensino'),
('Matemática',              'Cálculo, álgebra, estatística e geometria'),
('Física',                  'Mecânica, termodinâmica, eletromagnetismo e quântica'),
('Química',                 'Química orgânica, inorgânica e físico-química'),
('Biologia',                'Genética, ecologia, microbiologia e zoologia'),
('História',                'História do Brasil, mundial e contemporânea'),
('Literatura',              'Literatura brasileira, portuguesa e estrangeira'),
('Filosofia',               'Filosofia clássica, moderna e contemporânea'),
('Economia',                'Macroeconomia, microeconomia e economia política'),
('Arquitetura',             'Projeto arquitetônico, urbanismo e design'),
('Nutrição',                'Nutrição clínica, esportiva e saúde coletiva'),
('Enfermagem',              'Cuidados de enfermagem, saúde pública e UTI'),
('Jornalismo',              'Redação jornalística, comunicação e mídias digitais'),
('Sistemas de Informação',  'Banco de dados, redes e segurança da informação'),
('Contabilidade',           'Contabilidade geral, tributária e custos'),
('Farmácia',                'Farmacologia, toxicologia e fitoterapia'),
('Veterinária',             'Clínica veterinária, zootecnia e medicina animal'),
('Odontologia',             'Dentística, ortodontia e saúde bucal'),
('Educação Física',         'Fisiologia do exercício, treinamento e saúde');


-- ============================================================
-- INSERT: livro
-- ============================================================
INSERT INTO livro (titulo, ibsn, autor, editora, ano, edicao, exemplares, id_categoria) VALUES
('Algoritmos: Teoria e Prática',                 '978-85-352-3699-6', 'Cormen, Thomas H.',     'Elsevier',          2012, 3, 3,  1),
('Banco de Dados: Projeto e Implementação',      '978-85-7780-382-2', 'Heuser, Carlos A.',     'Bookman',           2009, 2, 2,  1),
('Engenharia de Software',                       '978-85-8055-048-6', 'Pressman, Roger S.',    'McGraw-Hill',       2011, 8, 2,  2),
('Administração: Teoria, Processo e Prática',    '978-85-204-3767-5', 'Chiavenato, Idalberto', 'Manole',            2020, 5, 3,  3),
('Código Civil Brasileiro Comentado',            '978-65-5559-001-0', 'Fiuza, César',          'Saraiva',           2021, 4, 2,  4),
('Harrison: Medicina Interna',                   '978-85-8055-312-8', 'Fauci, Anthony S.',     'McGraw-Hill',       2020, 20,2,  5),
('Psicologia do Desenvolvimento',                '978-85-8055-173-5', 'Papalia, Diane E.',     'AMGH',              2013, 9, 2,  6),
('Didática',                                     '978-85-249-2384-5', 'Libâneo, José C.',      'Cortez',            2017, 3, 3,  7),
('Cálculo: Volume 1',                            '978-85-221-2572-2', 'Stewart, James',        'Cengage',           2016, 8, 4,  8),
('Fundamentos de Física: Mecânica',              '978-85-216-2986-7', 'Halliday, David',       'LTC',               2016, 10,3,  9),
('Química Orgânica',                             '978-85-8260-102-1', 'Clayden, Jonathan',     'Bookman',           2013, 2, 2, 10),
('Biologia Celular e Molecular',                 '978-85-8271-355-4', 'Alberts, Bruce',        'Artmed',            2017, 6, 2, 11),
('História do Brasil',                           '978-85-314-1723-0', 'Fausto, Boris',         'EDUSP',             2019, 5, 3, 12),
('Dom Casmurro',                                 '978-85-63560-11-5', 'Machado de Assis',      'Penguin/Companhia', 2012, 1, 4, 13),
('A República',                                  '978-85-7232-491-3', 'Platão',                'Martin Claret',     2011, 1, 2, 14),
('Princípios de Economia',                       '978-85-221-3295-9', 'Mankiw, N. Gregory',    'Cengage',           2020, 8, 3, 15),
('Arquitetura: Forma, Espaço e Ordem',           '978-85-8260-474-9', 'Ching, Francis D. K.',  'Bookman',           2017, 3, 2, 16),
('Nutrição e Dietética',                         '978-85-204-5237-1', 'Philippi, Sonia T.',    'Manole',            2018, 4, 2, 17),
('Fundamentos de Enfermagem',                    '978-85-352-9023-3', 'Potter, Patricia A.',   'Elsevier',          2018, 9, 2, 18),
('Manual de Redação e Estilo',                   '978-85-7508-213-0', 'Martins Filho, Eduardo','O Estado de S. Paulo',2019,3, 3, 19),
('Sistemas de Banco de Dados',                   '978-85-4301-839-5', 'Navathe, Shamkant B.',  'Pearson',           2018, 7, 3, 20),
('Contabilidade Geral',                          '978-85-224-8011-0', 'Marion, José Carlos',   'Atlas',             2019, 16,2, 21),
('Farmacologia Básica e Clínica',                '978-85-8055-257-2', 'Katzung, Bertram G.',   'McGraw-Hill',       2017, 13,2, 22),
('Medicina Veterinária Preventiva',              '978-85-7241-883-5', 'Thrusfield, Michael',   'Roca',              2018, 3, 2, 23),
('Fisiologia do Exercício',                      '978-85-204-5079-7', 'Powers, Scott K.',      'Manole',            2017, 8, 3, 25);


-- ============================================================
-- INSERT: funcionario
-- ============================================================
INSERT INTO funcionario (nome, cargo, login, senha, ativo) VALUES
('Ana Paula Souza',       'Bibliotecária-Chefe',   'ana.souza',    SHA2('senha123', 256), TRUE),
('Carlos Eduardo Lima',   'Atendente',              'carlos.lima',  SHA2('senha123', 256), TRUE),
('Fernanda Oliveira',     'Atendente',              'fern.oli',     SHA2('senha123', 256), TRUE),
('Roberto Almeida',       'Auxiliar de Biblioteca', 'rob.almeida',  SHA2('senha123', 256), TRUE),
('Juliana Costa',         'Atendente',              'jul.costa',    SHA2('senha123', 256), TRUE),
('Marcos Pereira',        'Auxiliar de Biblioteca', 'mar.pereira',  SHA2('senha123', 256), TRUE),
('Beatriz Mendes',        'Atendente',              'bea.mendes',   SHA2('senha123', 256), TRUE),
('Thiago Ramos',          'Auxiliar de Biblioteca', 'thi.ramos',    SHA2('senha123', 256), TRUE),
('Luciana Ferreira',      'Atendente',              'luc.ferreira', SHA2('senha123', 256), TRUE),
('Paulo Henrique Santos', 'Bibliotecário',          'pau.santos',   SHA2('senha123', 256), TRUE),
('Vanessa Rodrigues',     'Atendente',              'van.rod',      SHA2('senha123', 256), TRUE),
('Diego Martins',         'Auxiliar de Biblioteca', 'die.martins',  SHA2('senha123', 256), TRUE),
('Camila Nascimento',     'Atendente',              'cam.nasc',     SHA2('senha123', 256), TRUE),
('André Gomes',           'Bibliotecário',          'and.gomes',    SHA2('senha123', 256), TRUE),
('Priscila Torres',       'Auxiliar de Biblioteca', 'pri.torres',   SHA2('senha123', 256), TRUE),
('Rafael Cardoso',        'Atendente',              'raf.cardoso',  SHA2('senha123', 256), TRUE),
('Eliane Barbosa',        'Atendente',              'eli.barbosa',  SHA2('senha123', 256), TRUE),
('Gustavo Araújo',        'Auxiliar de Biblioteca', 'gus.araujo',   SHA2('senha123', 256), TRUE),
('Larissa Moreira',       'Atendente',              'lar.moreira',  SHA2('senha123', 256), TRUE),
('Felipe Correia',        'Auxiliar de Biblioteca', 'fel.correia',  SHA2('senha123', 256), FALSE);


-- ============================================================
-- INSERT: usuario
-- ============================================================
INSERT INTO usuario (nome, matricula, curso, tipo, telefone, email) VALUES
('Giovanna Silva',        '2021001',  'Ciência da Computação',  'aluno',       '(47)99111-1001', 'giovanna.silva@univille.edu.br'),
('Pedro Henrique Luz',    '2021002',  'Engenharia Civil',       'aluno',       '(47)99111-1002', 'pedro.luz@univille.edu.br'),
('Mariana Andrade',       '2021003',  'Administração',          'aluno',       '(47)99111-1003', 'mariana.andrade@univille.edu.br'),
('Lucas Fonseca',         '2021004',  'Direito',                'aluno',       '(47)99111-1004', 'lucas.fonseca@univille.edu.br'),
('Isabela Castro',        '2021005',  'Medicina',               'aluno',       '(47)99111-1005', 'isabela.castro@univille.edu.br'),
('Vinícius Pinto',        '2021006',  'Psicologia',             'aluno',       '(47)99111-1006', 'vinicius.pinto@univille.edu.br'),
('Amanda Ribeiro',        '2021007',  'Pedagogia',              'aluno',       '(47)99111-1007', 'amanda.ribeiro@univille.edu.br'),
('Henrique Duarte',       '2021008',  'Matemática',             'aluno',       '(47)99111-1008', 'henrique.duarte@univille.edu.br'),
('Natália Braga',         '2021009',  'Física',                 'aluno',       '(47)99111-1009', 'natalia.braga@univille.edu.br'),
('Gabriel Cunha',         '2021010',  'Química',                'aluno',       '(47)99111-1010', 'gabriel.cunha@univille.edu.br'),
('Letícia Nunes',         '2021011',  'Biologia',               'aluno',       '(47)99111-1011', 'leticia.nunes@univille.edu.br'),
('Eduardo Teixeira',      '2021012',  'História',               'aluno',       '(47)99111-1012', 'eduardo.teixeira@univille.edu.br'),
('Carolina Mello',        '2021013',  'Literatura',             'aluno',       '(47)99111-1013', 'carolina.mello@univille.edu.br'),
('Arthur Freitas',        '2021014',  'Filosofia',              'aluno',       '(47)99111-1014', 'arthur.freitas@univille.edu.br'),
('Fernanda Dias',         '2021015',  'Economia',               'aluno',       '(47)99111-1015', 'fernanda.dias@univille.edu.br'),
('Mateus Azevedo',        '2021016',  'Arquitetura',            'aluno',       '(47)99111-1016', 'mateus.azevedo@univille.edu.br'),
('Juliana Nogueira',      '2021017',  'Nutrição',               'aluno',       '(47)99111-1017', 'juliana.nogueira@univille.edu.br'),
('Ricardo Moura',         '2021018',  'Enfermagem',             'aluno',       '(47)99111-1018', 'ricardo.moura@univille.edu.br'),
('Bianca Lopes',          '2021019',  'Jornalismo',             'aluno',       '(47)99111-1019', 'bianca.lopes@univille.edu.br'),
('Diego Campos',          '2021020',  'Sistemas de Informação', 'aluno',       '(47)99111-1020', 'diego.campos@univille.edu.br'),
('Cristina Leão',         'PROF001',  'Ciência da Computação',  'professor',   '(47)99222-0001', 'cristina.leao@univille.edu.br'),
('Marcos Vidal',          'PROF002',  'Matemática',             'professor',   '(47)99222-0002', 'marcos.vidal@univille.edu.br'),
('Sandra Queiroz',        'PROF003',  'Medicina',               'professor',   '(47)99222-0003', 'sandra.queiroz@univille.edu.br'),
('Renato Simões',         'PROF004',  'Direito',                'professor',   '(47)99222-0004', 'renato.simoes@univille.edu.br'),
('Tânia Rocha',           'FUNC001',  'Administrativo',         'funcionario', '(47)99333-0001', 'tania.rocha@univille.edu.br');


-- ============================================================
-- INSERT: emprestimo
-- ============================================================
INSERT INTO emprestimo (id_usuario, id_livro, id_funcionario, data_emprestimo, data_devolucao_prevista, data_devolucao_real, status) VALUES
( 1,  1,  1, '2025-03-01', '2025-03-15', '2025-03-14', 'Devolvido'),
( 2,  3,  2, '2025-03-02', '2025-03-16', '2025-03-20', 'Atrasado'),
( 3,  4,  1, '2025-03-05', '2025-03-19', '2025-03-19', 'Devolvido'),
( 4,  5,  3, '2025-03-08', '2025-03-22', '2025-03-21', 'Devolvido'),
( 5,  6,  2, '2025-03-10', '2025-03-24', NULL,          'Atrasado'),
( 6,  7,  4, '2025-03-12', '2025-03-26', '2025-03-25', 'Devolvido'),
( 7,  8,  1, '2025-03-15', '2025-03-29', '2025-03-29', 'Devolvido'),
( 8,  9,  5, '2025-03-18', '2025-04-01', '2025-04-02', 'Atrasado'),
( 9, 10,  2, '2025-03-20', '2025-04-03', '2025-04-03', 'Devolvido'),
(10, 11,  3, '2025-03-22', '2025-04-05', NULL,          'Atrasado'),
(11, 12,  1, '2025-04-01', '2025-04-15', '2025-04-15', 'Devolvido'),
(12, 13,  4, '2025-04-02', '2025-04-16', '2025-04-16', 'Devolvido'),
(13, 14,  2, '2025-04-05', '2025-04-19', '2025-04-18', 'Devolvido'),
(14, 15,  5, '2025-04-07', '2025-04-21', NULL,          'Atrasado'),
(15, 16,  3, '2025-04-10', '2025-04-24', '2025-04-24', 'Devolvido'),
(16, 17,  1, '2025-04-12', '2025-04-26', '2025-04-26', 'Devolvido'),
(17, 18,  2, '2025-04-15', '2025-04-29', NULL,          'Em aberto'),
(18, 19,  4, '2025-04-18', '2025-05-02', '2025-05-02', 'Devolvido'),
(19, 20,  3, '2025-04-20', '2025-05-04', '2025-05-03', 'Devolvido'),
(20, 21,  1, '2025-04-22', '2025-05-06', NULL,          'Em aberto'),
(21,  2,  5, '2025-04-25', '2025-05-09', '2025-05-08', 'Devolvido'),
(22,  9,  2, '2025-05-02', '2025-05-16', NULL,          'Em aberto'),
(23,  6,  3, '2025-05-05', '2025-05-19', NULL,          'Em aberto'),
(24,  5,  1, '2025-05-08', '2025-05-22', NULL,          'Em aberto'),
(25, 22,  4, '2025-05-10', '2025-05-24', NULL,          'Em aberto');