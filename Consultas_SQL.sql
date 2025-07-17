use Filmes
go

--Exercício 1
SELECT Nome, Ano FROM Filmes

--Exercício 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

--Exercício 3
SELECT Nome, Ano FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Exercício 4
SELECT Nome, Ano FROM Filmes
WHERE Ano = 1997

--Exercício 5
SELECT Nome, Ano FROM Filmes
WHERE Ano > 2000
ORDER BY Ano

--Exercício 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Exercício 7
SELECT
	COUNT(*) AS [Quantidade],
	SUM(Duracao) AS [Duracao Total],
	Ano FROM Filmes
GROUP BY Ano
ORDER BY [Duracao Total] DESC

--Exercício 8
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

--Exercício 9
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

--Exercício 10
SELECT Nome, Ano, Genero FROM Filmes F
	INNER JOIN FilmesGenero FG
	ON FG.IdFilme = F.ID
	INNER JOIN Generos G
	ON G.ID = FG.IdGenero

--Exercício 11
SELECT Nome, Ano, Genero FROM Filmes F
	INNER JOIN FilmesGenero FG
	ON FG.IdFilme = F.ID
	INNER JOIN Generos G
	ON G.ID = FG.IdGenero
WHERE Genero = 'Mistério'

--Exercício 12
SELECT Nome, (PrimeiroNome + ' ' + UltimoNome) as [Nome Ator], Papel FROM Filmes F
	INNER JOIN ElencoFilme EF
	ON F.Id = EF.IdFilme
	INNER JOIN Atores A
	ON A.Id = EF.IdAtor






