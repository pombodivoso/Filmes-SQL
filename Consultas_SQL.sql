use Filmes
go

--Exerc�cio 1
SELECT Nome, Ano FROM Filmes

--Exerc�cio 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

--Exerc�cio 3
SELECT Nome, Ano FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Exerc�cio 4
SELECT Nome, Ano FROM Filmes
WHERE Ano = 1997

--Exerc�cio 5
SELECT Nome, Ano FROM Filmes
WHERE Ano > 2000
ORDER BY Ano

--Exerc�cio 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Exerc�cio 7
SELECT
	COUNT(*) AS [Quantidade],
	SUM(Duracao) AS [Duracao Total],
	Ano FROM Filmes
GROUP BY Ano
ORDER BY [Duracao Total] DESC

--Exerc�cio 8
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

--Exerc�cio 9
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

--Exerc�cio 10
SELECT Nome, Ano, Genero FROM Filmes F
	INNER JOIN FilmesGenero FG
	ON FG.IdFilme = F.ID
	INNER JOIN Generos G
	ON G.ID = FG.IdGenero

--Exerc�cio 11
SELECT Nome, Ano, Genero FROM Filmes F
	INNER JOIN FilmesGenero FG
	ON FG.IdFilme = F.ID
	INNER JOIN Generos G
	ON G.ID = FG.IdGenero
WHERE Genero = 'Mist�rio'

--Exerc�cio 12
SELECT Nome, (PrimeiroNome + ' ' + UltimoNome) as [Nome Ator], Papel FROM Filmes F
	INNER JOIN ElencoFilme EF
	ON F.Id = EF.IdFilme
	INNER JOIN Atores A
	ON A.Id = EF.IdAtor






