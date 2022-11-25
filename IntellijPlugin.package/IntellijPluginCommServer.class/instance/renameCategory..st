endpoints
renameCategory: request
	| class |

	class := Compiler evaluate: (request at: #class).
	class renameCategory: (request at: #category) toBe: (request at: #newName).