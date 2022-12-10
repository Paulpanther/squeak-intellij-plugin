endpoints
getClassComment: request
	| class |
	
	class := Compiler evaluate: (request at: #class).
	request respond: (class organization classComment asString)