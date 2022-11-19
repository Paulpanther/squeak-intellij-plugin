util
addMethod: data
	| code class |
	
	code := data at: 'code'.
	class := Compiler evaluate: (data at: 'clazz').
	class compile: code.