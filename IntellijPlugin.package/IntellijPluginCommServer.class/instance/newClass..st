endpoints
newClass: request

		(ClassBuilder new)
		    name: (request at: #class)
		    inEnvironment: (Environment current)
		    subclassOf: Object
		    type: #normal
		    instanceVariableNames: ''
		    classVariableNames: ''
		    poolDictionaries: ''
		    category: request at: #category.
        request respond: true