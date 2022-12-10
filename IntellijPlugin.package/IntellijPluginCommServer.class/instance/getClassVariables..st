endpoints
getClassVariables: request
	| class |
	
	class := Compiler evaluate: (request at: #class).
	request respond: (class class instVarNames)