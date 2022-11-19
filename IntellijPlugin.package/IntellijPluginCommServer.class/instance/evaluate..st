endpoints
evaluate: request
	[
		request respond: (Compiler evaluate: (request content)) asString.
	] on: Error do: [:ex |
		request respondError: ex asString
	]