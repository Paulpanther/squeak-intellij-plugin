endpoints
writeFile: request
	| class code |

	code := request at: 'content'.
	class := Compiler evaluate: (request at: 'clazz').
	class compile: code.