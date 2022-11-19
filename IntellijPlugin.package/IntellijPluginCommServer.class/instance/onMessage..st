server
onMessage: raw
	| data request |
	
	[
		data := STONJSON fromString: raw.
		request := Request newFromData: data withSocket: self ws.
			
		[
			(request action = #evaluate) ifTrue: [self evaluate: request].
			(request action = #refresh_file_system) ifTrue: [self refreshFileSystem: request].
			(request action = #file_content) ifTrue: [self fileContent: request].
			(request action = #write_file) ifTrue: [self writeFile: request].
		] on: Error do: [:ex |
			self halt.
			request respondError: ex asString
		]
	] on: Error do: [:ex | 
		self halt.
	]