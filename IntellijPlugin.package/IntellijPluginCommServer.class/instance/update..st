transcript
update: aMessage
	(self ws notNil and: (aMessage = #appendEntry)) ifTrue: [
		self send: (Transcript contents withUnixLineEndings withBlanksTrimmed) type: #transcript.
	].