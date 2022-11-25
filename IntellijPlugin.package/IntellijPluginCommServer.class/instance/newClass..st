endpoints
newClass: request

		(ClassBuilder new)
		    name: (request at: #class) asSymbol
		    inEnvironment: (Object environment)
		    subclassOf: Object
		    type: #normal
		    instanceVariableNames: ''
		    classVariableNames: ''
		    poolDictionaries: ''
		    category: (request at: #package) asSymbol.
        request respond: true.