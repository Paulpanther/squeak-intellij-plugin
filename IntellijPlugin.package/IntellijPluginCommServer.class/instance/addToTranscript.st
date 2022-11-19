transcript
addToTranscript

	(Transcript dependents includes: self) ifFalse: [
		Transcript addDependent: self.
	].