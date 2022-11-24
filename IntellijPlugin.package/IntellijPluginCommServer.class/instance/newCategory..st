endpoints
newCategory: request
		| class |

		class := Compiler evaluate: (request at: #class).
		class organization addCategory: (request at: #category) before: nil.