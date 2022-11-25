endpoints
renameMethod: request
	| class |

	class := Compiler evaluate: (request at: #class).