--CREATE TABLE BlogPosts
--(
--	PostID int NOT NULL PRIMARY KEY IDENTITY(1,1)
--	,PostDate datetime NOT NULL
--	,PostTitle nvarchar(200) NOT NULL
--	,PostContents nvarchar(MAX) NOT NULL
--	,PostImageUrl nvarchar(500) NULL
--)

--CREATE TABLE BlogComments
--(
--	CommentID int NOT NULL PRIMARY KEY IDENTITY(1,1)
--	,PostID int NOT NULL
--	,FOREIGN KEY (PostID)
--		REFERENCES BlogPosts(PostID)
--	,CommentDate datetime NOT NULL
--	,CommentContents nvarchar(500) NOT NULL
--	,CommentTitle nvarchar(200) NOT NULL
--	,CommentAuthor nvarchar(100) NOT NULL
--)