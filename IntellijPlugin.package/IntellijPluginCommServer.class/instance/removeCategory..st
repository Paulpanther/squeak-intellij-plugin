endpoints
removeCategory: request
    	| class category |
	
	class := Compiler evaluate: (request at: #class).
	category := (request at: #category) asSymbol.
	(class organization listAtCategoryNamed: category) do:
		[:sel | class removeSelector: sel].
	class organization removeCategory: category.
	request respond: true.