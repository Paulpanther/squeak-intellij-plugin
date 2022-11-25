endpoints
newMethod: request
	| class method body i |

	class := Compiler evaluate: (request at: #class).
	method := (request at: #method) asSymbol.
	body := ''.

	(method includesSubstring: ':') ifTrue: [
		i := 1.

		(method subStrings: ':') do: [:key |
			body := body, key, ': arg', i, ' '.
			i := i + 1.
	    ].
	] ifFalse: [
		body := method.
	].

    [
        class compile: body.
        class organization classify: method under: ((request at: #category) asSymbol) logged: true.

        request respond: true.
    ] on: SyntaxErrorNotification do: [:ex |
        request respond: false.
        ex resume.
    ]
