endpoints
removeClass: request
    	| class |
	
	class := Compiler evaluate: (request at: #class).
	class removeFromSystem.
	request respond: true.