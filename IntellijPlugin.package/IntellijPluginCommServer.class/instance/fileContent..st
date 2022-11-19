endpoints
fileContent: request
	| class |

	class := Compiler evaluate: (request at: #clazz).
	request respond: ((class methodDict at: ((request at: #file) asSymbol)) decompileString)