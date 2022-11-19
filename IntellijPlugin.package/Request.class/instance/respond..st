sending
respond: aResponse
	self ws send: (STONJSON toString: {
		#id -> (self id). 
		#content -> aResponse
	} asDictionary)