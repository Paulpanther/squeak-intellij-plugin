server
send: aResult type: aType

	self ws send: (STONJSON toString: {#type->aType. #content->aResult} asDictionary)