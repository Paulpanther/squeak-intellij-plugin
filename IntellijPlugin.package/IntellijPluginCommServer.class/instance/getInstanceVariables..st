endpoints
getInstanceVariables: request
	| class |
	
	class := Compiler evaluate: (request at: #class).
	request respond: (class instVarNames)