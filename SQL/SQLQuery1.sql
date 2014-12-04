--SELECT * 
--FROM highscores2
--WHERE Game ='CHeesenibbler'
--ORDER BY Score DESC

--SELECT *
--FROM highscores2
--WHERE (name = 'dustin'
--	OR name = 'dave') AND
--		game = 'Battleship'

--Inserting records

--INSERT INTO highscores2(name, game, score)
--	VALUES ('Kaipo', 'Cheesenibbler', '17')

--Update

--UPDATE highscores2
--SET name = 'Ken Griffey Jr.'
--WHERE name = 'Kaipo'

--Delete

--DELETE 
--FROM highscores2
--WHERE highscores = 3

--SELECT *
--FROM highscores2
--WHERE name like 'Re%'

--Create a table for my favorite breads

--CREATE TABLE FavoriteBreads
--(
--	FavoriteBreadID int not null primary key identity(1,1)
--	, Name nvarchar(50) not null
--	, TasteIndex int not null
--)

--ALTER TABLE FavoriteBreads
--ADD FunFactor nvarchar(50) not null

--Renames a table...
--EXEC sp_RENAME 'FavoriteBreads.notes' , 'Notes', 'COLUMN'

--Alters a data type
--ALTER TABLE FavoriteBreads
--ALTER COLUMN Notes nvarchar(MAX)

--CREATE PROCEDURE InsertHighScore
--	@name nvarchar(50)
--	,@game nvarchar(50)
--	,@score int
--AS
--BEGIN
--	INSERT INTO highscores2(name, game, score)
--	VALUES(@name, @game, @score)
--END

--EXEC InsertHighScore @name = 'Reid', @game = 'Battleship', @score = 57

--CREATE PROCEDURE GetHighScoreByID
--	@highscores int
--AS
--BEGIN
--	SELECT * FROM highscores2 WHERE highscores = @highscores
--END

EXEC GetHighScoreByID @highscores = 5