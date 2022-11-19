server
initialize
	self addToTranscript.
	WebServer reset default listenOn: 2424.

	WebServer default addService: '/' action:[:req|
		self ws: req asWebSocket.
		self ws timeout: 300. "5 minutes timeout"

		self ws onMessage:[:raw|
			self onMessage: raw.
		].
		self ws onClose:[ 
			self ws: nil.
		].
		self ws onError:[:ex|
			
		].

		self ws run.
	].
