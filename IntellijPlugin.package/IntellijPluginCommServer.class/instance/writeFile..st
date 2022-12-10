endpoints
writeFile: request
	| class code |

	code := request at: #content.
	class := request classParam.
	[
		class compile: code.
		request respond: true.
	] on: SyntaxErrorNotification do: [:ex |
		request respond: false.
		ex resume.
	]