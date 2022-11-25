endpoints
renameClass: request
	| class |

	class := Compiler evaluate: (request at: #class).
	class rename: (request at: #newName)