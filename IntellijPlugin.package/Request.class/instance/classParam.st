accessing
classParam
	| class |
	
	class := Compiler evaluate: (self at: #class).
	^ (self content at: #isInstance ifAbsent: [true]) ifTrue: [class] ifFalse: [class class]