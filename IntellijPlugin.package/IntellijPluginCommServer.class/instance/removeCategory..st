endpoints
removeCategory: request
    	| class |
	
	class := Compiler evaluate: (request at: #class).
	class removeCategory: (request at: #category).
	request respond: true.