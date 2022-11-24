endpoints
writeFile: request
	| class code |

	code := request at: #content.
	class := Compiler evaluate: (request at: #class).
	[
		class compile: code.
		request respond: true.
	] on: SyntaxErrorNotification do: [:ex |
		request respond: false.
		ex resume.
	]