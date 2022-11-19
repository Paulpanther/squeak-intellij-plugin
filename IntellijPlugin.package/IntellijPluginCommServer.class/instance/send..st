server
send: aResult

	self ws send: (STONJSON toString: aResult asDictionary)