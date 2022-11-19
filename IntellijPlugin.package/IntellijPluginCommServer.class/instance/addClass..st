util
addClass: data
	| name |
	
	name := data at: #name.
	(ClassBuilder new) 
		name: name asSymbol
		inEnvironment: (Environment current) 
		subclassOf: Object 
		type: #normal 
		instanceVariableNames: '' 
		classVariableNames: '' 
		poolDictionaries: '' 
		category: 'IntellijPlugin'.