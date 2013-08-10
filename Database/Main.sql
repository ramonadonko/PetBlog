/*
	--------------------------
	SCHEME
	---------------------------
*/

PRINT 'Deploying Schemes'

	:r "Schemes\ClearAll.sql"
	GO
	PRINT 'Ran - SCHEME - "ClearAll.sql"'
	GO	

	:r "Schemes\Users.sql"
	GO
	PRINT 'Ran - SCHEME - "Users.sql"'
	GO	
	
	:r "Schemes\Tags.sql"
	GO
	PRINT 'Ran - SCHEME - "Tags.sql"'
	GO
	
	:r "Schemes\Articles.sql"
	GO
	PRINT 'Ran - SCHEME - "Articles.sql"'
	GO
	
	:r "Schemes\Comments.sql"
	GO
	PRINT 'Ran - SCHEME - "Comments.sql"'
	GO
	
	:r "Schemes\TagsInArticles.sql"
	GO
	PRINT 'Ran - SCHEME - "TagsInArticles.sql"'
	GO

PRINT 'Deploying Schemes Completed'


/*
	--------------------------
	STORED PROCEDURES
	---------------------------
*/

PRINT 'Deploying Stored Procedures'


PRINT 'Deploying Stored Procedures Completed'


/*
	--------------------------
	DATA
	---------------------------
*/

PRINT 'Deploying Datas'

	:r "Datas\AddUsers.sql"
	GO
	PRINT 'Ran - DATA - "AddUsers.sql"'
	GO	
	
	:r "Datas\AddTags.sql"
	GO
	PRINT 'Ran - DATA - "AddTags.sql"'
	GO
	
	:r "Datas\AddArticles.sql"
	GO
	PRINT 'Ran - DATA - "AddArticles.sql"'
	GO
	
	:r "Datas\AddComments.sql"
	GO
	PRINT 'Ran - DATA - "AddComments.sql"'
	GO
	
	:r "Datas\AddTagsInArticles.sql"
	GO
	PRINT 'Ran - DATA - "AddTagsInArticles.sql"'
	GO

PRINT 'Deploying Datas Compeleted'