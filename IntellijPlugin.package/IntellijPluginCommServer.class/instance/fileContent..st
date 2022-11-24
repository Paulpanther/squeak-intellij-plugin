endpoints
fileContent: request
	| class |

	class := Compiler evaluate: (request at: #class).
	request respond: (class sourceCodeAt: ((request at: #file) asSymbol)) asString