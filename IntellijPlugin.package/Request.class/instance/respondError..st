sending
respondError: aResponse
	self ws send: (STONJSON toString: {
		#id -> (self id). 
		#content -> ''.
		#error -> aResponse
	} asDictionary)