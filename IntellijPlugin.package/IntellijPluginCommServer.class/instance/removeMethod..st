endpoints
removeMethod: request
    	| success |
	
	success := (request classParam removeSelector: (request at: #method) asSymbol) ~~ nil.
	request respond: success.