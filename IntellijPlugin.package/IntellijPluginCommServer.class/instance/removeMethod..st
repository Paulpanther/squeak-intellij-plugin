endpoints
removeMethod: request
    	| class success |
	
	class := Compiler evaluate: (request at: #class).
	success := (class removeSelector: (request at: #method) asSymbol) ~~ nil.
	request respond: success.