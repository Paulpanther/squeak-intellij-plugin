transcript
removeFromTranscript

	Transcript dependents size to: 1 by: -1 do: [ :i|
		((Transcript dependents at: i) = self) ifTrue: [
			Transcript removeDependent: i.
		].
	].