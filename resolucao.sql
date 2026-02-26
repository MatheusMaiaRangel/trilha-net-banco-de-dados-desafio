-- EX 1:


select nome, ano from filmes



-- EX 2:

select nome, ano, Duracao from filmes
order by Ano 



-- Ex 3:

select nome, ano, Duracao from filmes
where nome = 'De Volta para o Futuro'



-- Ex 4:

select nome, ano, Duracao from filmes
where Ano = 1997
-- BONUS: Em ordem crescente
order by nome



--Ex 5:

select nome, ano, Duracao from filmes
where Ano >= 2000
-- BONUS: Em ordem crescente porano
order by ano, nome



--Ex 6:

select nome, ano, Duracao from filmes
WHERE Duracao BETWEEN 101 AND 149 -- nao foi pedido pra ser igual maior a 100 e nem igual menor 150, por isso esses valores quebrados
order by Duracao, nome 



-- Ex 7:

SELECT Ano, count (*) Quantidade from filmes
group by ano
order by Quantidade desc



-- Ex 8:

-- Versão da impressão do Readme
select * from atores
where genero = 'M'

-- Versão da impressão do enunciado
select PrimeiroNome, UltimoNome from atores
where genero = 'M'



-- Ex 9:

-- Versão da impressão do Readme
select * from atores
where genero = 'F'
Order By PrimeiroNome

-- Versão da impressão do enunciado
select PrimeiroNome, UltimoNome from atores
where genero = 'F'
Order By PrimeiroNome



-- Ex 10: 

SELECT f.nome, g.genero
FROM filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN generos g ON g.Id = fg.IdGenero

-- EX 11:

SELECT f.nome, g.genero
FROM filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN generos g ON g.Id = fg.IdGenero
where g.genero = 'Mistério'



-- Ex 12:

SELECT f.nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM filmes f
INNER JOIN ElencoFilme ef on f.Id = ef.IdFilme
INNER JOIN Atores a on a.Id = ef.IdAtor
